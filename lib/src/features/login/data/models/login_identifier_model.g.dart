// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_identifier_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginIdentifierModelAdapter extends TypeAdapter<LoginIdentifierModel> {
  @override
  final int typeId = 0;

  @override
  LoginIdentifierModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginIdentifierModel(
      accessToken: fields[0] as String,
      email: fields[1] as String,
      name: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LoginIdentifierModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginIdentifierModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
