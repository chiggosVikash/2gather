
import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String name;
  final String email;
  final String? phone;
  final String? password;
  final String authType;
  final String? profilePicUrl;
  final String gender;
  final int? dob;
  final int createdAt;
  final int updatedAt;

  UserModel({

    required this.name,
    required this.email,
    this.phone,
    this.password,
    required this.authType,
    this.profilePicUrl,
    required this.gender,
    this.dob,
    required this.createdAt,
    required this.updatedAt,
  });

  // Factory constructor for creating a new UserModel instance from a map
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  // Method for converting a UserModel instance to a map
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}