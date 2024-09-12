
import '../../features/login/data/models/login_identifier_model.dart';
import 'hive_db_manager.dart';

class HiveQuery {

  static final  HiveQuery _instance = HiveQuery._internal();
  factory HiveQuery() => _instance;
  HiveQuery._internal();


  Future<void> addLoginIdentifier(LoginIdentifierModel loginIdentifierModel) async {
    final loginBox = HiveDbManager().loginBox;
    /// if login box is not empty then clear it
    if(loginBox.isNotEmpty){
      loginBox.clear();
    }
    await loginBox.add(loginIdentifierModel);
  }

  Future<String?> getAccessToken() async {
    final loginBox = HiveDbManager().loginBox;
    if(loginBox.isNotEmpty){
      final loginIdentifierModel = loginBox.getAt(0);
      return loginIdentifierModel!.accessToken;
    }
    return null;
  }


}