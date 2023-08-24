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

import '../../data/repository/authorization/authorization_repository_firebase_impl.dart'
    as _i17;
import '../../data/repository/preferences/preferences_repository_impl.dart'
    as _i12;
import '../../data/services/auth_service/authorization_firebase.dart' as _i7;
import '../../data/services/auth_service/authorization_service.dart' as _i6;
import '../../data/sources/authorization/authorization_local.dart' as _i4;
import '../../data/sources/authorization/authorization_local_hive.dart' as _i5;
import '../../data/sources/preferences/preferences_local.dart' as _i9;
import '../../data/sources/preferences/preferences_local_hive.dart' as _i10;
import '../../data/sources/summary/local/summary_local.dart' as _i13;
import '../../data/sources/summary/local/summary_local_hive.dart' as _i14;
import '../../presentation/navigation/router.dart' as _i3;
import '../../presentation/theme/theme_manager.dart' as _i15;
import '../../utils/l10n/locale_manager.dart' as _i18;
import '../../utils/scaffold_messenger.dart' as _i8;
import '../bloc/authorization/authorization_bloc.dart' as _i19;
import '../repository/authorization_repository.dart' as _i16;
import '../repository/preferences_repository.dart' as _i11;

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
    gh.factoryAsync<_i4.AuthorizationLocal>(
        () => _i5.AuthorizationLocalHiveImpl.create());
    gh.factory<_i6.AuthorizationService>(
        () => _i7.AuthorizationServiceFirebaseImpl());
    gh.lazySingleton<_i8.Messenger>(() => _i8.Messenger());
    gh.factoryAsync<_i9.PreferencesLocal>(
        () => _i10.PreferencesLocalHiveImpl.create());
    gh.singletonAsync<_i11.PreferencesRepository>(() async =>
        _i12.PreferencesRepositoryImpl(await getAsync<_i9.PreferencesLocal>()));
    gh.factoryAsync<_i13.SummaryLocal>(
        () => _i14.SummaryLocalHiveImpl.create());
    gh.singletonAsync<_i15.ThemeManager>(() async =>
        _i15.ThemeManager(await getAsync<_i11.PreferencesRepository>())
          ..initThemeMode());
    gh.factoryAsync<_i16.AuthorizationRepository>(
        () async => _i17.AuthorizationRepositoryFirebaseImpl(
              gh<_i6.AuthorizationService>(),
              await getAsync<_i4.AuthorizationLocal>(),
            ));
    gh.singletonAsync<_i18.LocaleManager>(() async =>
        _i18.LocaleManager(await getAsync<_i11.PreferencesRepository>())
          ..initLocale());
    gh.singletonAsync<_i19.AuthorizationBloc>(
      () async => _i19.AuthorizationBloc(
          await getAsync<_i16.AuthorizationRepository>()),
      dispose: (i) => i.dispose(),
    );
    return this;
  }
}
