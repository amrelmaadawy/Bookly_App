import 'package:bookly_app/Features/home/data/repos/homeRepoImpl.dart';
import 'package:bookly_app/core/utils/apiService.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final get_it = GetIt.instance;
void setup() {
  get_it.registerSingleton<homeRepoImpl>(homeRepoImpl(get_it.get<ApiService>()));
  get_it.registerSingleton<ApiService>(ApiService(Dio()));
}
