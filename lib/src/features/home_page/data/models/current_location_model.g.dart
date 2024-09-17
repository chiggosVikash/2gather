// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentLocationModel _$CurrentLocationModelFromJson(
        Map<String, dynamic> json) =>
    CurrentLocationModel(
      createdAt: json['createdAt'] as String?,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      updatedAt: json['updatedAt'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$CurrentLocationModelToJson(
        CurrentLocationModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'lat': instance.lat,
      'lng': instance.lng,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
