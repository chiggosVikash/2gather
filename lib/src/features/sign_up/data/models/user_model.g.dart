// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      authType: json['authType'] as String,
      profilePicUrl: json['profilePicUrl'] as String?,
      gender: json['gender'] as String,
      dob: (json['dob'] as num?)?.toInt(),
      createdAt: (json['createdAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num).toInt(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'authType': instance.authType,
      'profilePicUrl': instance.profilePicUrl,
      'gender': instance.gender,
      'dob': instance.dob,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
