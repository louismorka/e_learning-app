import 'package:dartz/dartz.dart';
import '../../../data/model/auth/create_signin_request.dart';
import '../../../data/model/auth/create_user_request.dart';

abstract class AuthRepository{
  Future<Either> signup(CreateUserRequest createUserReq);
  Future<Either> signin(SignInUserRequest signInUserReq);
}