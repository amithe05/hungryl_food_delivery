import 'package:hungyrl_food_delivery_application/features/auth/data/datasources/auth_remote_data_souce.dart';
import 'package:hungyrl_food_delivery_application/features/auth/domain/repositories/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> login(String email, String password) {
    return remoteDataSource.login(email, password);
  }
}