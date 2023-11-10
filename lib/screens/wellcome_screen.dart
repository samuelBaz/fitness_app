import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/widgets/button_fit.dart';
import 'package:flutter/material.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Expanded(
            child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 94,
                ),
                Image.asset('assets/img_go_to_home.png'),
                const SizedBox(
                  height: 36,
                ),
                const Text(
                  "Welcome, Stefani",
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 210,
                  child: Text(
                    "You are all set now, let’s reach your goals together with us",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7B6F72),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            )
          ],
        )),
        ButtonFit(
          text: "Go to Home",
          onPressed: () => {Navigator.pushNamed(context, AppRoutes.dashboard)},
          primary: true,
        )
      ]),
    ));
  }
}
