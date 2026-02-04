import 'package:courspire_app/core/config/theme/app_theme.dart';
import 'package:courspire_app/presentation/onboarding/bloc/theme_cubit.dart';
import 'package:courspire_app/presentation/onboarding/intro_screen_one.dart';
import 'package:courspire_app/presentation/onboarding/intro_screen_three.dart';
import 'package:courspire_app/presentation/onboarding/intro_screen_two.dart';
import 'package:courspire_app/presentation/onboarding/login_page.dart';
import 'package:courspire_app/presentation/onboarding/signup_page.dart';
import 'package:courspire_app/presentation/onboarding/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory:
        kIsWeb
            ? HydratedStorageDirectory.web
            : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  runApp(const CourspireApp());
}

class CourspireApp extends StatefulWidget {
  const CourspireApp({super.key});

  @override
  State<CourspireApp> createState() => _CourspireAppState();
}

class _CourspireAppState extends State<CourspireApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ThemeCubit())],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder:
            (context, mode) => MaterialApp(
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: mode,
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
              routes: {
                'introScreenOne': (context) {
                  return const IntroScreenOne();
                },
                'introScreenTwo': (context) {
                  return const IntroScreenTwo();
                },
                'introScreenThree': (context) {
                  return const IntroScreenThree();
                },
                'signupPage': (context) {
                  return  SignupPage();
                },
                'loginPage': (context) {
                  return  LoginPage();
                },
              },
            ),
      ),
    );
  }
}
