

import 'dart:async';
import 'package:backmate/src/db/local/hive_query.dart';
import 'package:backmate/src/features/login/data/models/login_identifier_model.dart';
import 'package:backmate/src/features/sign_up/data/models/user_model.dart';
import 'package:backmate/src/features/sign_up/repos/providers/sign_up_repo_provider.dart';
import 'package:flutter/foundation.dart';
import '../../../../services/providers/device_info_service_provider.dart';
import '../../repos/providers/login_repo_provider.dart';
import '/src/error_handlers/auth_error_handler.dart';

import '../../data/providers/auth_provider.dart';
import '/src/features/login/data/models/login_trace_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = AsyncNotifierProvider<LoginP,LoginTraceModel?>(()=> LoginP());

class LoginP extends AsyncNotifier<LoginTraceModel?>{
  
  LoginP();
  
  @override
  FutureOr<LoginTraceModel?> build() {
    return null;
  }

  Future<void> loginWithEmailAndPassword({required String email, required String password})async{

  }

  Future<bool> loginWithGoogle()async{
    state = const AsyncLoading();
    try{
      final authP = ref.read(authProvider);
      final user = await authP.signInWithGoogle();

      if(user.email == null){
        throw LoginFailedError(errorMessage: "Email id not found");
      }

      final isEmailExist = await ref.read(loginRepoProvider).checkUserExist(user.email!);


        final deviceId = await ref.read(deviceInfoServiceProvider).getDeviceId();
        // final deviceName = await ref.read(deviceInfoServiceProvider).getDeviceName();
        final deviceIp = await ref.read(deviceInfoServiceProvider).getDeviceIp();
        final loginTime = DateTime.now().millisecondsSinceEpoch;

        final loginTrace = LoginTraceModel(
          userId: user.email!,
          loginDevice: deviceId,
          loginIp: deviceIp, loginTime: loginTime);

      // User exist in the database
      if(isEmailExist){
        final accessToken = await ref.read(loginRepoProvider).createLoginTrace(loginTrace);
        await saveLoginIdentifierToLocalDb(email: user.email!, name: user.displayName ?? "NA", accessToken: accessToken);
        state = AsyncData(loginTrace.copyWith(accessToken: accessToken));
        return true;
        /// Save to local storage
      }

      /// User does not exist in the database
      /// Signup the user
      final userModel = UserModel(
        name: user.displayName ?? "NA",
        email: user.email!,
        authType: "google",
        gender: "NA",
        phone: user.phoneNumber,
        profilePicUrl: user.photoURL,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        updatedAt: DateTime.now().millisecondsSinceEpoch,
      );  

      await createUser(userModel);
      final accessToken = await ref.read(loginRepoProvider).createLoginTrace(loginTrace);
      await saveLoginIdentifierToLocalDb(email: user.email!, name: user.displayName ?? "NA", accessToken: accessToken);
      // 



      
      state = AsyncData(loginTrace.copyWith(accessToken: accessToken));
      return true;


    }catch(e,st){
      state = AsyncError(LoginFailedError(errorMessage: e.toString()), st);
      if(kDebugMode){
        rethrow;
      }
      return false;
    }
  }

  Future<void> saveLoginIdentifierToLocalDb({required String email, required String name, required String accessToken})async{
    await HiveQuery().addLoginIdentifier(LoginIdentifierModel(email: email, name: name, accessToken: accessToken));
  } 


  Future<String> createUser(UserModel user){
    return ref.read(signUpRepoProvider).signUp(user);
  }


}

