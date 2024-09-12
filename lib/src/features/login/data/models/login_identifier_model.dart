

import 'package:hive/hive.dart';
part 'login_identifier_model.g.dart';
@HiveType(typeId: 0)
class LoginIdentifierModel {
  @HiveField(0)
  String accessToken;
  @HiveField(1)
  String email;
  @HiveField(2)
  String name;

  LoginIdentifierModel({
    required this.accessToken,
    required this.email,
    required this.name,
  }); 

}