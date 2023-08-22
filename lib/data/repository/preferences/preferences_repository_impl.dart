import 'package:currency_app/data/sources/preferences/preferences_local.dart';
import 'package:currency_app/domain/repository/preferences_repository.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: PreferencesRepository)
class PreferencesRepositoryImpl implements PreferencesRepository {
  final PreferencesLocal _local;

  PreferencesRepositoryImpl(this._local);

  static const _defaultBaseCurrency = "RUB";

  @override
  Future<String?> get username async {
    try {
      final res = await _local.get();
      return res.username;
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<String> get baseCurrency async {
    try {
      final res = await _local.get();
      return res.baseCurrency??_defaultBaseCurrency;
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<List<String>> get favorites async {
    try {
      final res = await _local.get();
      return res.favoritesCurrency??[];
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<bool?> get isDarkMode async {
    try {
      final res = await _local.get();
      return res.isDarkMode;
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<String> get language async {
    try {
      final res = await _local.get();
      return res.language??'eng';
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<String> setBaseCurrency(String baseCurrency) async {
    try {
      final cur = await _local.get();
      final res = await _local.update(cur.copyWith(baseCurrency: baseCurrency));
      return res.baseCurrency!;
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<List<String>> setFavorites(List<String> favorites) async {
    try {
      final cur = await _local.get();
      final res = await _local.update(cur.copyWith(favoritesCurrency: favorites));
      return res.favoritesCurrency!;
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<bool> setIsDarkMode(bool isDarkMode) async {
    try {
      final cur = await _local.get();
      final res = await _local.update(cur.copyWith(isDarkMode: isDarkMode));
      return res.isDarkMode!;
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<String> setLanguage(String language) async {
    try {
      final cur = await _local.get();
      final res = await _local.update(cur.copyWith(language: language));
      return res.language!;
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<String> setUsername(String username) async {
    try {
      final cur = await _local.get();
      final res = await _local.update(cur.copyWith(username: username));
      return res.username!;
    } catch(error) {
      rethrow;
    }
  }

}