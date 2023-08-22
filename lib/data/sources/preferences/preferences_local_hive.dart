import 'dart:ffi';

import 'package:currency_app/data/dto/preferences/hive_preferences_mapper.dart';
import 'package:currency_app/data/dto/preferences/hive_preferences_object.dart';
import 'package:currency_app/data/sources/preferences/preferences_local.dart';
import 'package:currency_app/domain/models/preferences/preferences_data.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PreferencesLocal)
class PreferencesLocalHiveImpl  implements PreferencesLocal{
  final Box<HivePreferencesObject> preferencesBox;

  PreferencesLocalHiveImpl({required this.preferencesBox});

  @factoryMethod
  static Future<PreferencesLocalHiveImpl> create() async {
    await Hive.initFlutter();
    Hive.registerAdapter(PreferencesAdapter());
    final preferencesBox = await Hive.openBox<HivePreferencesObject>('preferences');
    if (preferencesBox.isEmpty) {
      preferencesBox.add(HivePreferencesObject(username: null, isDarkMode: null, language: null, baseCurrency: null, favoritesCurrency: null));
    }
    return PreferencesLocalHiveImpl(preferencesBox: preferencesBox);
  }

  @override
  Future<PreferencesData> get() async {
    try {
      final res = preferencesBox.values.first;
      return HivePreferencesMapper.fromHive(res);
    } catch(error) {
      logger.e(error);
      rethrow;
    }
  }

  @override
  Future<PreferencesData> update(PreferencesData data) async {
    try {
      await preferencesBox.putAt(0, HivePreferencesMapper.toHive(data));
      return HivePreferencesMapper.fromHive(preferencesBox.values.first);
    } catch(error) {
      logger.e(error);
      rethrow;
    }
  }

}