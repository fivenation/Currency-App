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
    as _i22;
import '../../data/repository/currency/currency_repository_impl.dart' as _i27;
import '../../data/repository/preferences/preferences_repository_impl.dart'
    as _i13;
import '../../data/repository/summary/summary_repository_impl.dart' as _i19;
import '../../data/services/auth_service/authorization_firebase.dart' as _i7;
import '../../data/services/auth_service/authorization_service.dart' as _i6;
import '../../data/services/dio/dio_service.dart' as _i8;
import '../../data/sources/authorization/authorization_local.dart' as _i4;
import '../../data/sources/authorization/authorization_local_hive.dart' as _i5;
import '../../data/sources/currency/currency_remote.dart' as _i24;
import '../../data/sources/currency/currency_remote_impl.dart' as _i25;
import '../../data/sources/preferences/preferences_local.dart' as _i10;
import '../../data/sources/preferences/preferences_local_hive.dart' as _i11;
import '../../data/sources/summary/local/summary_local.dart' as _i14;
import '../../data/sources/summary/local/summary_local_hive.dart' as _i15;
import '../../data/sources/summary/remote/summary_remote.dart' as _i16;
import '../../data/sources/summary/remote/summary_remote_impl.dart' as _i17;
import '../../presentation/navigation/router.dart' as _i3;
import '../../presentation/pages/currency_page/bloc/currency_bloc.dart' as _i31;
import '../../presentation/pages/home_page/bloc/summary_bloc.dart' as _i29;
import '../../presentation/theme/theme_manager.dart' as _i20;
import '../../utils/l10n/locale_manager.dart' as _i28;
import '../../utils/scaffold_messenger.dart' as _i9;
import '../bloc/authorization/authorization_bloc.dart' as _i30;
import '../changeNotifiers/base_currency_notifier.dart' as _i23;
import '../repository/authorization_repository.dart' as _i21;
import '../repository/currency_repository.dart' as _i26;
import '../repository/preferences_repository.dart' as _i12;
import '../repository/summary_repository.dart' as _i18;

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
    gh.singleton<_i8.DioService>(_i8.DioService.create());
    gh.lazySingleton<_i9.Messenger>(() => _i9.Messenger());
    gh.factoryAsync<_i10.PreferencesLocal>(
        () => _i11.PreferencesLocalHiveImpl.create());
    gh.singletonAsync<_i12.PreferencesRepository>(() async =>
        _i13.PreferencesRepositoryImpl(
            await getAsync<_i10.PreferencesLocal>()));
    gh.factoryAsync<_i14.SummaryLocal>(
        () => _i15.SummaryLocalHiveImpl.create());
    gh.factory<_i16.SummaryRemote>(
        () => _i17.SummaryRemoteDioImpl(gh<_i8.DioService>()));
    gh.singletonAsync<_i18.SummaryRepository>(
        () async => _i19.SummaryRepositoryImpl(
              gh<_i16.SummaryRemote>(),
              await getAsync<_i14.SummaryLocal>(),
            ));
    gh.singletonAsync<_i20.ThemeManager>(() async =>
        _i20.ThemeManager(await getAsync<_i12.PreferencesRepository>())
          ..initThemeMode());
    gh.factoryAsync<_i21.AuthorizationRepository>(
        () async => _i22.AuthorizationRepositoryFirebaseImpl(
              gh<_i6.AuthorizationService>(),
              await getAsync<_i4.AuthorizationLocal>(),
            ));
    gh.singletonAsync<_i23.BaseCurrencyNotifier>(() async =>
        _i23.BaseCurrencyNotifier(await getAsync<_i12.PreferencesRepository>())
          ..init());
    gh.factory<_i24.CurrencyRemote>(
        () => _i25.CurrencyRemoteDioImpl(gh<_i8.DioService>()));
    gh.factory<_i26.CurrencyRepository>(
        () => _i27.CurrencyRepositoryImpl(gh<_i24.CurrencyRemote>()));
    gh.singletonAsync<_i28.LocaleManager>(() async =>
        _i28.LocaleManager(await getAsync<_i12.PreferencesRepository>())
          ..initLocale());
    gh.singletonAsync<_i29.SummaryBloc>(
        () async => _i29.SummaryBloc(await getAsync<_i18.SummaryRepository>()));
    gh.singletonAsync<_i30.AuthorizationBloc>(
      () async => _i30.AuthorizationBloc(
          await getAsync<_i21.AuthorizationRepository>()),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i31.CurrencyBloc>(
        _i31.CurrencyBloc(gh<_i26.CurrencyRepository>()));
    return this;
  }
}
