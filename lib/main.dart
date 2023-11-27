import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/screens/complete_profile_screen.dart';
import 'package:fitness_app/screens/dashboard_screen.dart';
import 'package:fitness_app/screens/goals_screen.dart';
import 'package:fitness_app/screens/login_screen.dart';
import 'package:fitness_app/screens/notifications_screen.dart';
import 'package:fitness_app/screens/onboarding_screen.dart';
import 'package:fitness_app/screens/sign_up_screen.dart';
import 'package:fitness_app/screens/splash_screen.dart';
import 'package:fitness_app/screens/wellcome_screen.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale("en"), Locale("es"), Locale("fr")],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xff94A8FE), brightness: Brightness.light),
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).colorScheme.primary),
          labelMedium: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Constants.grayColor),
        ),
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.splashScreen: (context) => SplashScreen(),
        AppRoutes.onboardingScreen: (context) => const OnboardingScreen(
              test: false,
            ),
        AppRoutes.signUp: (context) => SignUpScreen(),
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.completeProfile: (context) => CompleteProfileScreen(),
        AppRoutes.goals: (context) => GoalsScreen(),
        AppRoutes.wellcome: (context) => WellcomeScreen(),
        AppRoutes.dashboard: (context) => DashboardScreen(),
        AppRoutes.notifications: (context) => NotificationsScreen()
      },
      initialRoute: AppRoutes.dashboard,
    );
  }
}
