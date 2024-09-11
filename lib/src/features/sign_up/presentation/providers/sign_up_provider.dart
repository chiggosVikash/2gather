

import 'dart:async';

import '/src/features/sign_up/repos/providers/sign_up_repo_provider.dart';
import 'package:flutter/foundation.dart';
import '/src/features/sign_up/data/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpProvider = AsyncNotifierProvider<SignUpP, UserModel?>(() => SignUpP());
class SignUpP extends AsyncNotifier<UserModel?>{

  @override
  FutureOr<UserModel?> build() {
    return null;
  }

  Future<void> signUp(UserModel userModel)async{
    state = const AsyncLoading();
    try{
      await ref.read(signUpRepoProvider).signUp(userModel);
      state = AsyncData(userModel);
    }catch(e,st){
      state = AsyncError(e,st);
      if(kDebugMode){
        rethrow;
      }
    }
  }
}