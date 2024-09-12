// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_trace_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginTraceModel _$LoginTraceModelFromJson(Map<String, dynamic> json) =>
    LoginTraceModel(
      userId: json['userId'] as String,
      loginTime: (json['loginTime'] as num).toInt(),
      logoutTime: (json['logoutTime'] as num?)?.toInt(),
      loginDevice: json['loginDevice'] as String?,
      loginIp: json['loginIp'] as String?,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$LoginTraceModelToJson(LoginTraceModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'loginTime': instance.loginTime,
      'logoutTime': instance.logoutTime,
      'loginDevice': instance.loginDevice,
      'loginIp': instance.loginIp,
      'accessToken': instance.accessToken,
    };
