import 'package:courspire_app/core/config/assets/app_images.dart';
import 'package:courspire_app/core/config/theme/app_color.dart';
import 'package:flutter/material.dart';

class IntroScreenThree extends StatefulWidget {
  const IntroScreenThree({super.key});

  @override
  State<IntroScreenThree> createState() => _IntroScreenThreeState();
}

class _IntroScreenThreeState extends State<IntroScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.introScreenThree),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 30,
              vertical: 80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Expert Knowledge On Demand',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: AppColors.darkBlue,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Learn From Top Industry Professionals and Apply New Skills Instantly.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.grey, fontSize: 18),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 18, color: AppColors.lightYellow),
                    Icon(Icons.circle, size: 15, color: AppColors.lightYellow),
                    Icon(Icons.circle, size: 15, color: AppColors.blue),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 90),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'signupPage');
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.lightYellow,
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 140,
                      vertical: 25,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'loginPage');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
