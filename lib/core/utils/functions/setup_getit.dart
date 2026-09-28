import 'package:bookly/core/utils/dio_services.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioServices>(DioServices(getIt.get<Dio>()));
  getIt.registerSingleton<HomeLocalDataSourceImpl>(HomeLocalDataSourceImpl());
  getIt.registerSingleton<HomeRemoteDataSourceImpl>(
      HomeRemoteDataSourceImpl(getIt.get<DioServices>()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    localDataSource: getIt.get<HomeLocalDataSourceImpl>(),
    remoteDataSource: getIt.get<HomeRemoteDataSourceImpl>(),
  ));
}
