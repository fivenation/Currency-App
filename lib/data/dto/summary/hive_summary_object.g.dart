// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_summary_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SummaryAdapter extends TypeAdapter<HiveSummaryObject> {
  @override
  final int typeId = 0;

  @override
  HiveSummaryObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveSummaryObject(
      name: fields[0] as String,
      curValue: fields[1] as double,
      prevValue: fields[2] as double,
      isFavorite: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, HiveSummaryObject obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.curValue)
      ..writeByte(2)
      ..write(obj.prevValue)
      ..writeByte(3)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SummaryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
