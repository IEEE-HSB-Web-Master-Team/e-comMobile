// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

import '../../features/sign-up-logic/data/api/network_module.dart' as _i625;
import '../../features/sign-up-logic/data/api/sign_up_logic_retrofit_client.dart'
    as _i508;
import '../../features/sign-up-logic/data/data_sources/contracts/online_datasource.dart'
    as _i745;
import '../../features/sign-up-logic/data/data_sources/impl/auth_datasource_impl.dart'
    as _i9;
import '../../features/sign-up-logic/data/repositories/repo_impl.dart' as _i318;
import '../../features/sign-up-logic/domain/contracts/auth_repo.dart' as _i139;
import '../../features/sign-up-logic/domain/usecases/auth_usecase.dart'
    as _i1025;
import '../cache/hive/hive_manager.dart' as _i329;
import '../cache/storage_token.dart' as _i170;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.factory<_i528.PrettyDioLogger>(
        () => networkModule.provideLogInterceptor());
    gh.singleton<_i329.HiveManager>(() => _i329.HiveManager());
    gh.singleton<_i170.StorageToken>(() => _i170.StorageToken());
    gh.lazySingleton<_i361.Dio>(() => networkModule.provideDio());
    gh.singleton<_i508.SignUpLogicRetrofitClient>(
        () => _i508.SignUpLogicRetrofitClient(gh<_i361.Dio>()));
    gh.factory<_i745.OnlineDatasource>(() => _i9.AuthDataSourceImpl(
        retrofitClient: gh<_i508.SignUpLogicRetrofitClient>()));
    gh.factory<_i139.AuthRepository>(() => _i318.AuthRepositoryImpl(
        onlineDatasource: gh<_i745.OnlineDatasource>()));
    gh.factory<_i1025.AuthUseCase>(
        () => _i1025.AuthUseCase(authRepository: gh<_i139.AuthRepository>()));
    return this;
  }
}

class _$NetworkModule extends _i625.NetworkModule {}
