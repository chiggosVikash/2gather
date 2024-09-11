import 'package:json_annotation/json_annotation.dart';

part 'login_trace_model.g.dart';

@JsonSerializable()
class LoginTraceModel {
  final String userId;
  final int loginTime;
  final int? logoutTime;
  final String? loginDevice;
  final String? loginIp;
  final String? accessToken;
  

  LoginTraceModel({
    required this.userId,
    required this.loginTime,
    this.logoutTime,
    this.loginDevice,
    this.loginIp,
    this.accessToken
  });

  // Factory constructor for creating a new LoginTrace instance from a map
  factory LoginTraceModel.fromJson(Map<String, dynamic> json) => _$LoginTraceModelFromJson(json);

  // Method for converting a LoginTrace instance to a map
  Map<String, dynamic> toJson() => _$LoginTraceModelToJson(this);

  // copyWith method for updating the LoginTrace instance

  LoginTraceModel copyWith({
    String? userId,
    int? loginTime,
    int? logoutTime,
    String? loginDevice,
    String? loginIp,
    String? accessToken,
  }) {
    return LoginTraceModel(
      userId: userId ?? this.userId,
      loginTime: loginTime ?? this.loginTime,
      logoutTime: logoutTime ?? this.logoutTime,
      loginDevice: loginDevice ?? this.loginDevice,
      loginIp: loginIp ?? this.loginIp,
      accessToken: accessToken ?? this.accessToken,
    );
  } 
}