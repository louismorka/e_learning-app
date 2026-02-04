import 'package:courspire_app/core/config/assets/app_images.dart';
import 'package:courspire_app/core/config/theme/app_color.dart';
import 'package:courspire_app/presentation/onboarding/intro_screen_one.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.introScreenOne),fit: BoxFit.cover),
          ),
          child: Center(
            child: Image(image: AssetImage(AppImages.blueLogo), height: 80),
          ),
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IntroScreenOne()),
    );
  }
}
