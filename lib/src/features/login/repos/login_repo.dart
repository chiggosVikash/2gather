
import '../data/data_source/login_data_source.dart';
import '../data/models/login_trace_model.dart';

sealed class LoginRepoI {
  Future<bool> loginWithEmailAndPassword(String email, String password);
  Future<bool> checkUserExist(String email);
  Future<String> createLoginTrace(LoginTraceModel loginTrace);
  Future<void> signOut();

}

class LoginRepo implements LoginRepoI {
  final LoginDataSourceI _loginDataSource;

  LoginRepo(this._loginDataSource);

  @override
  Future<bool> checkUserExist(String email) async {
    return await _loginDataSource.checkUserExist(email);
  }

  @override
  Future<bool> loginWithEmailAndPassword(String email, String password) async {
    return await _loginDataSource.loginWithEmailAndPassword(email, password);
  }

  @override
  Future<void> signOut() {
    return _loginDataSource.signOut();
  }
  
  @override
  Future<String> createLoginTrace(LoginTraceModel loginTrace) {
    return _loginDataSource.createLoginTrace(loginTrace);
  }
}