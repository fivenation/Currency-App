// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_authorization_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthorizationAdapter extends TypeAdapter<HiveUserDataObject> {
  @override
  final int typeId = 2;

  @override
  HiveUserDataObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveUserDataObject(
      id: fields[0] as String?,
      email: fields[1] as String?,
      username: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveUserDataObject obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorizationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
