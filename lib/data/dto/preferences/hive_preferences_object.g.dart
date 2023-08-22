// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_preferences_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PreferencesAdapter extends TypeAdapter<HivePreferencesObject> {
  @override
  final int typeId = 1;

  @override
  HivePreferencesObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePreferencesObject(
      username: fields[0] as String?,
      isDarkMode: fields[1] as bool?,
      language: fields[2] as String?,
      baseCurrency: fields[3] as String?,
      favoritesCurrency: (fields[4] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, HivePreferencesObject obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.isDarkMode)
      ..writeByte(2)
      ..write(obj.language)
      ..writeByte(3)
      ..write(obj.baseCurrency)
      ..writeByte(4)
      ..write(obj.favoritesCurrency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PreferencesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
