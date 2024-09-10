

import 'dart:async';
import '../../../../services/providers/device_info_service_provider.dart';
import '../../data/providers/auth_provider.dart';
import '/src/features/login/data/models/login_trace_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginP extends AsyncNotifier<LoginTraceModel?>{
  
  
  
  @override
  FutureOr<LoginTraceModel?> build() {
    return null;
  }

  Future<void> loginWithGoogle()async{
    try{
      final authP = ref.read(authProvider);
      final user = await authP.signInWithGoogle();

      /// check is email id is already registered or not if not then move to signup screen with basic details filled 
      /// and email id prefilled
      /// if email id is already registered then add login trace and move to home screen

      final deviceId = await ref.read(deviceInfoServiceProvider).getDeviceId();
      final deviceName = await ref.read(deviceInfoServiceProvider).getDeviceName();
      final deviceIp = await ref.read(deviceInfoServiceProvider).getDeviceIp();
      final loginTime = DateTime.now().millisecondsSinceEpoch;
    }catch(e){

    }
  }




  
}