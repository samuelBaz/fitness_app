import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var position = 1;
  var progress_circle = 90.0;
  var titles = [
    "Track Your Goal",
    "Get Burn",
    "Eat Well",
    "Improve Sleep  Quality"
  ];
  var descriptions = [
    "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
    "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
    "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
    "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning"
  ];

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
                          'assets/bg_onboard$position.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: Image.asset('assets/img_onboard$position.png'),
                        )
                      ],
                    )),
                Expanded(
                    flex: 5,
                    child: ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          color: Colors.white,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(titles[position - 1],
                                    style: const TextStyle(
                                      color: Color(0xFF1D1517),
                                      fontSize: 25,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w900,
                                    )),
                                const SizedBox(height: 16),
                                Text(
                                  descriptions[position - 1],
                                  style: const TextStyle(
                                    color: Color(0xFF7B6F72),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ))
              ],
            )),
        floatingActionButton: GestureDetector(
          onTap: () => {
            setState(() {
              if (position < 4) {
                progress_circle = progress_circle + 90.0;
                position++;
              } else {
                Navigator.pushNamed(context, AppRoutes.signUp);
              }
            })
          },
          child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 16, 16),
              child: DashedCircularProgressBar.square(
                dimensions: 65,
                progress: progress_circle,
                maxProgress: 360,
                startAngle: 0,
                foregroundColor: Constants.primaryColor,
                backgroundColor: const Color(0xffeeeeee),
                foregroundStrokeWidth: 3,
                backgroundStrokeWidth: 1,
                foregroundGapSize: 1,
                foregroundDashSize: 0,
                backgroundGapSize: 5,
                backgroundDashSize: 55,
                animation: true,
                child: Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.all(6),
                  decoration: const ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1.00, 0.08),
                      end: Alignment(1, -0.08),
                      colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                    ),
                    shape: OvalBorder(),
                  ),
                  child: const Icon(Icons.chevron_right, color: Colors.white),
                ),
              )),
        ));
  }
}
