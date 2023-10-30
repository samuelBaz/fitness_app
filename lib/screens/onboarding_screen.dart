import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                  flex: 7,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/bg_onboard1.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Center(
                        child: Image.asset('assets/img_onboard1.png'),
                      )
                    ],
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  color: Colors.white,
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Track Your Goal",
                            style: TextStyle(
                              color: Color(0xFF1D1517),
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w900,
                            )),
                        SizedBox(height: 16),
                        Text(
                          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
                          style: TextStyle(
                            color: Color(0xFF7B6F72),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                ),
              )
            ],
          )),
      floatingActionButton: Container(
        width: 50,
        height: 50,
        color: Colors.red,
      ),
    );
  }
}
