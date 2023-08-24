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

import '../../data/repository/preferences/preferences_repository_impl.dart'
    as _i11;
import '../../data/services/auth_service/authorization_firebase.dart' as _i6;
import '../../data/services/auth_service/authorization_service.dart' as _i5;
import '../../data/sources/preferences/preferences_local.dart' as _i8;
import '../../data/sources/preferences/preferences_local_hive.dart' as _i9;
import '../../data/sources/summary/local/summary_local.dart' as _i12;
import '../../data/sources/summary/local/summary_local_hive.dart' as _i13;
import '../../presentation/navigation/router.dart' as _i3;
import '../../presentation/theme/theme_manager.dart' as _i14;
import '../../utils/l10n/locale_manager.dart' as _i15;
import '../../utils/scaffold_messenger.dart' as _i7;
import '../bloc/authorization/authorization_bloc.dart' as _i4;
import '../repository/preferences_repository.dart' as _i10;

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
    gh.singleton<_i4.AuthorizationBloc>(_i4.AuthorizationBloc());
    gh.factory<_i5.AuthorizationService>(
        () => _i6.AuthorizationServiceFirebaseImpl());
    gh.lazySingleton<_i7.Messenger>(() => _i7.Messenger());
    gh.factoryAsync<_i8.PreferencesLocal>(
        () => _i9.PreferencesLocalHiveImpl.create());
    gh.singletonAsync<_i10.PreferencesRepository>(() async =>
        _i11.PreferencesRepositoryImpl(await getAsync<_i8.PreferencesLocal>()));
    gh.factoryAsync<_i12.SummaryLocal>(
        () => _i13.SummaryLocalHiveImpl.create());
    gh.singletonAsync<_i14.ThemeManager>(() async =>
        _i14.ThemeManager(await getAsync<_i10.PreferencesRepository>())
          ..initThemeMode());
    gh.singletonAsync<_i15.LocaleManager>(() async =>
        _i15.LocaleManager(await getAsync<_i10.PreferencesRepository>())
          ..initLocale());
    return this;
  }
}
