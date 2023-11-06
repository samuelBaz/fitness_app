import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/screens/complete_profile_screen.dart';
import 'package:fitness_app/screens/login_screen.dart';
import 'package:fitness_app/screens/onboarding_screen.dart';
import 'package:fitness_app/screens/sign_up_screen.dart';
import 'package:fitness_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.splashScreen: (context) => SplashScreen(),
        AppRoutes.onboardingScreen: (context) => OnboardingScreen(),
        AppRoutes.signUp: (context) => SignUpScreen(),
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.completeProfile: (context) => CompleteProfileScreen()
      },
      initialRoute: AppRoutes.signUp,
    );
  }
}
