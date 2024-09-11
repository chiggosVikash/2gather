
import '../data/data_sources/sign_up_datasource.dart';
import '../data/models/user_model.dart';

sealed class SignUpRepoI{
  Future<String> signUp(UserModel userModel);
}

class SignUpRepo implements SignUpRepoI{
  final SignUpDataSourceI _signUpDataSource;

  SignUpRepo(this._signUpDataSource);
  @override
  Future<String> signUp(UserModel userModel) {
    return _signUpDataSource.signUp(userModel);
  }
}