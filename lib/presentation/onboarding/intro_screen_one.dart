import 'package:courspire_app/core/config/assets/app_images.dart';
import 'package:courspire_app/core/config/theme/app_color.dart';
import 'package:flutter/material.dart';

class IntroScreenOne extends StatefulWidget {
  const IntroScreenOne({super.key});

  @override
  State<IntroScreenOne> createState() => IntroScreenOneState();
}

class IntroScreenOneState extends State<IntroScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.introScreenOne),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Learn Anywhere, "
                    "Anytime",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Access sizes bite courses on the go. Your path to success is just a step away.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.grey, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 18, color: AppColors.blue),
                  Icon(Icons.circle, size: 15, color: AppColors.lightYellow),
                  Icon(Icons.circle, size: 15, color: AppColors.lightYellow),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'introScreenTwo');
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
