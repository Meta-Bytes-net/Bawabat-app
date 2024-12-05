import 'package:bwabat/core/helpers/app_preference.dart';
import 'package:bwabat/core/networking/api_service.dart';
import 'package:bwabat/features/login/data/repos/auth_repo.dart';
import 'package:bwabat/features/login/logic/login_cubit.dart';
import 'package:bwabat/features/main_layout/data/repos/home_repo.dart';
import 'package:bwabat/features/main_layout/logic/scan_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  // getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  // Reposd

  final sharedPrefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  getIt.registerLazySingleton<AppPreferences>(() => AppPreferences(getIt()));
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

// Cubits
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<ScanCubit>(() => ScanCubit(getIt()));
}
