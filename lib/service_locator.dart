import 'package:get_it/get_it.dart';
import 'data/repository/auth/auth_repository_implementation.dart';
import 'data/sources/auth/auth_firebase_services.dart';
import 'domain/repository/auth/auth.dart';
import 'domain/usecases/auth/sign_in.dart';
import 'domain/usecases/auth/sign_up.dart';


final serviceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  serviceLocator.registerSingleton<AuthFirebaseService>(AuthFirebaseImpl());
  serviceLocator.registerSingleton<AuthRepository>(AuthRepositoryImplementation());
  serviceLocator.registerSingleton<SignupUseCase>(SignupUseCase());
  serviceLocator.registerSingleton<SignInUseCase>(SignInUseCase());

}