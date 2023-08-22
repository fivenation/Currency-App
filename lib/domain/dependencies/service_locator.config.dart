// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/sources/preferences/preferences_local.dart' as _i5;
import '../../data/sources/preferences/preferences_local_hive.dart' as _i6;
import '../../data/sources/summary/local/summary_local.dart' as _i7;
import '../../data/sources/summary/local/summary_local_hive.dart' as _i8;
import '../../presentation/navigation/router.dart' as _i3;
import '../../presentation/theme/theme_manager.dart' as _i9;
import '../../utils/scaffold_messenger.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Messenger>(() => _i4.Messenger());
    gh.factoryAsync<_i5.PreferencesLocal>(
        () => _i6.PreferencesLocalHiveImpl.create());
    gh.factoryAsync<_i7.SummaryLocal>(() => _i8.SummaryLocalHiveImpl.create());
    gh.lazySingleton<_i9.ThemeManager>(() => _i9.ThemeManager());
    return this;
  }
}
