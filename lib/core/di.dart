import 'package:get_it/get_it.dart';
import 'package:hungyrl_food_delivery_application/features/auth/data/datasources/auth_remote_data_souce.dart';
import 'package:hungyrl_food_delivery_application/features/auth/data/repositaries/auth_repo_impl.dart';
import 'package:hungyrl_food_delivery_application/features/auth/domain/repositories/auth_repo.dart';
import 'package:hungyrl_food_delivery_application/features/auth/domain/usecases/login_use_case.dart';

final getIt = GetIt.instance;

void initDependencies() {
  getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource());

  getIt
      .registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));

  
  getIt.registerLazySingleton(() => LoginUseCase(getIt()));

  // BLoC
  // getIt.registerFactory(() => AuthBloc(getIt()));
}
