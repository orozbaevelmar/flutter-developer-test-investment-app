// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/support/data/data_sources/support_remote_datasource.dart'
    as _i818;
import '../../features/support/data/repositories/support_repository_impl.dart'
    as _i387;
import '../../features/support/domain/repositories/support_repository.dart'
    as _i275;
import '../../features/support/logic/support_cubit.dart' as _i769;
import '../network/api_consumer.dart' as _i931;
import '../network/interceptors/auth_interceptor.dart' as _i745;
import '../network/interceptors/unauth_interceptor.dart' as _i1000;
import '../network/netowrk_info/network_info.dart' as _i24;
import '../services/token_service.dart' as _i227;
import '../utils/snackbar_service.dart' as _i304;
import 'register_module.dart' as _i291;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i361.Dio>(() => registerModule.dioClient);
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i973.InternetConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<_i1000.UnAuthInterceptor>(() => _i1000.UnAuthInterceptor());
  gh.lazySingleton<_i304.SnackBarService>(() => _i304.SnackBarService());
  gh.lazySingleton<_i931.ApiConsumer>(
    () => registerModule.authenticatedApiConsumer,
    instanceName: 'authenticatedConsumer',
  );
  gh.lazySingleton<_i227.TokenService>(
      () => _i227.TokenService(gh<_i460.SharedPreferences>()));
  gh.lazySingleton<_i931.ApiConsumer>(
    () => registerModule.mainApiConsumer,
    instanceName: 'unAuthenticatedConsumer',
  );
  gh.lazySingleton<_i745.AuthInterceptor>(
      () => _i745.AuthInterceptor(gh<_i227.TokenService>()));
  gh.lazySingleton<_i24.NetworkInfo>(
      () => _i24.NetworkInfoImpl(gh<_i973.InternetConnectionChecker>()));
  gh.lazySingleton<_i818.SupportRemoteDataSource>(() =>
      _i818.SupportRemoteDataSourceImpl(
          gh<_i931.ApiConsumer>(instanceName: 'authenticatedConsumer')));
  gh.factory<_i275.SupportRepository>(() => _i387.SupportRepositoryImpl(
      remoteDataSource: gh<_i818.SupportRemoteDataSource>()));
  gh.factory<_i769.SupportCubit>(
      () => _i769.SupportCubit(gh<_i275.SupportRepository>()));
  return getIt;
}

class _$RegisterModule extends _i291.RegisterModule {}
