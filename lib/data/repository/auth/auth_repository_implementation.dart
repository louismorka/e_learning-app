import 'package:dartz/dartz.dart';
import '../../../domain/repository/auth/auth.dart';
import '../../../service_locator.dart';
import '../../model/auth/create_signin_request.dart';
import '../../model/auth/create_user_request.dart';
import '../../sources/auth/auth_firebase_services.dart';
import 'package:courspire_app/service_locator.dart';

class AuthRepositoryImplementation extends AuthRepository{
  @override
  Future<Either> signin(SignInUserRequest signInUserReq) async{
    return await serviceLocator<AuthFirebaseService>().signin(signInUserReq);
  }

  @override
  Future<Either> signup(CreateUserRequest createUserReq) async{
    return await serviceLocator<AuthFirebaseService>().signup(createUserReq);
  }

}