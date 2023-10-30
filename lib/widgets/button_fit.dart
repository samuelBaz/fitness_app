import 'package:fitness_app/app_routes.dart';
import 'package:flutter/material.dart';

class ButtonFit extends StatefulWidget {
  @override
  State<ButtonFit> createState() => _ButtonFitState();
}

class _ButtonFitState extends State<ButtonFit> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, AppRoutes.onboardingScreen)},
      child: Container(
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(99),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: const Center(
            child: Text(
              "Get Started",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w900),
            ),
          )),
    );
  }
}
