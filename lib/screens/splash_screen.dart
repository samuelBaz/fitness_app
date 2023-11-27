import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/screens/onboarding_screen.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/button_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _navigateAndResult(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => OnboardingScreen(test: true),
            settings:
                RouteSettings(arguments: "This argument is send to setting")));

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(gradient: Constants.primaryGradient),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Flexi",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        "FY",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Text('Everybody Can Train',
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              )),
          ButtonFit(
            text: "Get Started",
            onPressed: () => {
              // Navigator.popAndPushNamed(context, AppRoutes.onboardingScreen)
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => OnboardingScreen(
              //         test: true,
              //       ),
              //     ))
              _navigateAndResult(context)
            },
          )
        ],
      ),
    ));
  }
}
