import 'package:fitness_app/widgets/button_fit.dart';
import 'package:fitness_app/widgets/slide_fit.dart';
import 'package:flutter/material.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  int _currentPage = 0;
  PageController _pageController = PageController();

  changePage(int page) {
    setState(() {
      _currentPage = page;
      _pageController.animateToPage(page,
          duration: Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          const Text(
            "What is your goal ?",
            style: TextStyle(
              color: Color(0xFF1D1517),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child:
                const Text("It will help us to choose a best program for you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7B6F72),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    )),
          ),
          const SizedBox(height: 8),
          Expanded(
              child: PageView(
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });
            },
            controller: _pageController,
            children: const [
              SlideFit(
                  title: "Improve Shape",
                  description:
                      "I have a low amount of body fat and need / want to build more muscle",
                  imageString: "assets/img_goals1.png"),
              SlideFit(
                  title: "Lean & Tone",
                  description:
                      "I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way",
                  imageString: "assets/img_goals2.png"),
              SlideFit(
                  title: "Lose a Fat",
                  description:
                      "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass",
                  imageString: "assets/img_goals3.png"),
            ],
          )),
          ButtonFit(
              text: "Confirm",
              primary: true,
              onPressed: () => {
                    if (this._currentPage < 3)
                      {this.changePage(_currentPage + 1)}
                  })
        ],
      )),
    );
  }
}
