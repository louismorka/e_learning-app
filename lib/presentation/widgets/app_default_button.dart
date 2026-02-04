import 'package:courspire_app/core/config/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppDefaultButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const AppDefaultButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        minimumSize: Size.fromHeight(height ?? 85),
      ),
      onPressed: onPressed,
      child: Text(title, style: TextStyle(color: AppColors.white)),
    );
  }
}
