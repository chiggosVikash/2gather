
import 'package:backmate/src/error_handlers/auth_error_handler.dart';

import '/src/core/consts/end_points.dart';
import '/src/features/login/data/models/login_trace_model.dart';

import '/src/services/network_call_service.dart';

sealed class LoginDataSourceI{
  Future<bool> loginWithEmailAndPassword(String email, String password);
  Future<bool> checkUserExist(String email);
  Future<String> createLoginTrace(LoginTraceModel loginTrace);
  Future<void> signOut();
}

class LoginDataSource implements LoginDataSourceI{
  final NetworkCall _networkCall;
  
  LoginDataSource(this._networkCall);

  @override
  Future<bool> checkUserExist(String email) async{
    final response = await _networkCall.get(url: "${EndPoints.checkEmailExistance}/$email");
    if(response.statusCode == 200 && response.data["message"] == "UserNotExist") return false;
    if(response.statusCode == 200) return true;
    return false;
  }

  @override
  Future<bool> loginWithEmailAndPassword(String email, String password) {
    // TODO: implement loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
  
  @override
  Future<String> createLoginTrace(LoginTraceModel loginTrace) async{
    final response = await _networkCall.post(EndPoints.loginTrace, loginTrace.toJson());
    if(response.statusCode == 200){
      return response.data['token'];
    }
    throw LoginFailedError(errorMessage: "Login Failed with error code ${response.statusCode}");
  }

}