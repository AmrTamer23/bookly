import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

void setupServiceLocater() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService(Dio())));
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(ApiService(Dio())));
}
