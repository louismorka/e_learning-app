import 'package:dartz/dartz.dart';
import '../../../core/usecase/usecase.dart';
import '../../../data/model/auth/create_user_request.dart';
import '../../../service_locator.dart';
import '../../repository/auth/auth.dart';

class SignInUseCase extends UseCase<Either, SignInUserRequest>{
  @override
  Future<Either> call({SignInUserRequest ? params}) {
    return serviceLocator<AuthRepository>().signin(params !);
  }

}