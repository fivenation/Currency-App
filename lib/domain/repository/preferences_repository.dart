import 'package:currency_app/domain/models/preferences/preferences_data.dart';

abstract class PreferencesRepository {
  Future<PreferencesData> get();
  Future<PreferencesData> update(PreferencesData data);
}