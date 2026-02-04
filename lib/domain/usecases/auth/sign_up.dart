import 'package:dartz/dartz.dart';

import '../../../core/usecase/usecase.dart';
import '../../../data/model/auth/create_signin_request.dart';
import '../../../service_locator.dart';
import '../../repository/auth/auth.dart';

class SignupUseCase extends UseCase<Either, CreateUserRequest>{
  @override
  Future<Either> call({CreateUserRequest ? params}) {
    return serviceLocator<AuthRepository>().signup(params !);
  }

}