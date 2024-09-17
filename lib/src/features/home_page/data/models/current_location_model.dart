import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
part 'current_location_model.g.dart';


@JsonSerializable()
@immutable
class CurrentLocationModel{
  final String userId;
  final double lat;
  final double lng;
  final String? createdAt;
  final String? updatedAt;

  const CurrentLocationModel({this.createdAt,required this.lat,required this.lng,this.updatedAt,required this.userId});

  factory CurrentLocationModel.fromJson(Map<String,dynamic> json) => _$CurrentLocationModelFromJson(json);

  Map<String,dynamic> toJson()=> _$CurrentLocationModelToJson(this);
   

}