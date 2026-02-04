import 'package:courspire_app/core/config/assets/app_images.dart';
import 'package:courspire_app/core/config/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../../data/model/auth/create_signin_request.dart';
import '../../domain/usecases/auth/sign_up.dart';
import '../../service_locator.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _fullName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    BackButton(),
                    SizedBox(width: 60),
                    Text(
                      'Create Account',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(AppImages.blueLogo), height: 40),
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  autocorrect: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Name"),
                    prefixIcon: Icon(Icons.person_2_outlined),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  autocorrect: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Email Address"),
                    prefixIcon: Icon(Icons.mail_outline_outlined),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  autocorrect: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Phone Number"),
                    prefixIcon: Icon(Icons.phone_enabled_outlined),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  autocorrect: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.password_outlined),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  autocorrect: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Confirm Password"),
                    prefixIcon: Icon(Icons.password_outlined),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 150,
                      vertical: 25,
                    ),
                  ),onPressed: () async {
                  var result = await serviceLocator<SignupUseCase>().call(
                    params: CreateUserRequest(
                      password: _password.text.toString(),
                      fullName: _fullName.text.toString(),
                      email: _email.text.toString(),
                    ),
                  );
                  result.fold(
                          (l){
                        var snackBar =SnackBar(content: Text(l));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                          (r){
                        Navigator.pushNamed(context, 'introScreenOne');
                      }
                  );
                },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Already Have an Account?',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'loginPage');
                      },
                      child: Text(
                        'Login here',
                        style: TextStyle(
                          color: AppColors.yellow,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
