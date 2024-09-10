
sealed class LoginDataSourceI{
  Future<bool> loginWithEmailAndPassword(String email, String password);
  Future<String> checkUserExist(String email);
  Future<void> signOut();
}

class LoginDataSource implements LoginDataSourceI{
  @override
  Future<String> checkUserExist(String email) {
    // TODO: implement checkUserExist
    throw UnimplementedError();
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

}