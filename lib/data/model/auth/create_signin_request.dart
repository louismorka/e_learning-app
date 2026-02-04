class CreateUserRequest{
  final String  password;
  final String  fullName;
  final String  email;

  CreateUserRequest({
    required this.password,
    required this.fullName,
    required this.email
  });
}