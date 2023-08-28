import 'package:currency_app/domain/models/preferences/preferences_data.dart';

abstract class PreferencesLocal {
  Future<PreferencesData> get();
  Future<PreferencesData> update(PreferencesData data);
}
