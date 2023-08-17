import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:currency_app/domain/dependencies/service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: true, // default
)
configureDependencies(GetIt getIt, {String? environment, EnvironmentFilter? environmentFilter}) {
  return getIt.init(
      environmentFilter: environmentFilter,
      environment: environment
  );
}