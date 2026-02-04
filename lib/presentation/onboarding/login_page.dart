import 'package:flutter/material.dart';

import '../../core/config/assets/app_images.dart';
import '../../core/config/theme/app_color.dart';
import '../../data/model/auth/create_user_request.dart';
import '../../domain/usecases/auth/sign_in.dart';
import '../../service_locator.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

   final TextEditingController _email = TextEditingController();
   final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    BackButton(color: AppColors.yellow),
                    SizedBox(width: 100),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(AppImages.blueLogo),
                          height: 30,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    TextField(controller: _email,
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
                    TextField(controller: _password,
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
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 157,
                          vertical: 25,
                        ),
                      ),
                      onPressed: () async {
                        var result = await serviceLocator<SignInUseCase>().call(
                          params: SignInUserRequest(
                            password: _password.text.toString(),
                            email: _email.text.toString(),
                          ),
                        );
                        result.fold(
                              (l) {
                            var snackBar = SnackBar(content: Text(l));
                            ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(snackBar);
                          },
                              (r) {
                            Navigator.pushNamed(context, 'introScreenThree');
                          },
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Forgotten Password?',
                      style: TextStyle(
                        color: AppColors.yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
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
                            Navigator.pushNamed(context, 'signupPage');
                          },
                          child: Text(
                            'Register',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
