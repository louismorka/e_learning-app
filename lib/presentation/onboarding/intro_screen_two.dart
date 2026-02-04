import 'package:courspire_app/core/config/assets/app_images.dart';
import 'package:courspire_app/core/config/text/app_text.dart';
import 'package:courspire_app/core/config/theme/app_color.dart';
import 'package:courspire_app/presentation/onboarding/bloc/theme_cubit.dart';
import 'package:courspire_app/presentation/widgets/app_default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroScreenTwo extends StatefulWidget {
  const IntroScreenTwo({super.key});

  @override
  State<IntroScreenTwo> createState() => _IntroScreenTwoState();
}

class _IntroScreenTwoState extends State<IntroScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.introScreenTwo),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
              vertical: 100,
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColors.white,
                        radius: 50,
                        child: Icon(
                          Icons.dark_mode_outlined,
                          size: 40,
                          color: AppColors.yellow,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColors.white,
                        radius: 50,
                        child: Icon(
                          Icons.light_mode_outlined,
                          size: 40,
                          color: AppColors.yellow,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text("Skill Up Fast", style: kTextMediumBlack,),
                SizedBox(height: 45),
                Text(
                  "Master New Skills With Interactive Lessons Designed For Busy Lives.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: AppColors.grey),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 18, color: AppColors.lightYellow),
                    Icon(Icons.circle, size: 15, color: AppColors.blue),
                    Icon(Icons.circle, size: 15, color: AppColors.lightYellow),
                  ],
                ),
                SizedBox(height: 40),
                AppDefaultButton(
                  height: 70,
                  onPressed: () {Navigator.pushNamed(context, 'introScreenThree');},
                  title: 'Continue',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
