import 'package:fitness_app/screens/workout_tracer_screen.dart';
import 'package:fitness_app/widgets/circle_item_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ItemWorkOutFit extends StatefulWidget {
  final Color color;
  final bool mainColor;
  final int progress;

  const ItemWorkOutFit(
      {super.key,
      required this.color,
      this.mainColor = true,
      required this.progress});

  @override
  State<ItemWorkOutFit> createState() => _ItemWorkOutFitState();
}

class _ItemWorkOutFitState extends State<ItemWorkOutFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: ShapeDecoration(
        color: widget.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleItemFit(size: 50, mainColor: widget.mainColor),
            SvgPicture.asset('assets/layer.svg')
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Lowerbody Workout',
              style: TextStyle(
                color: Color(0xFF1D1517),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '180 Calories Burn | 20minutes',
              style: TextStyle(
                color: Color(0xFFA3A8AC),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            StepProgressIndicator(
              totalSteps: 100,
              currentStep: widget.progress,
              direction: Axis.horizontal,
              progressDirection: TextDirection.ltr,
              size: 10,
              padding: 0,
              roundedEdges: Radius.circular(10),
              selectedGradientColor: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFC58BF2), Color(0xFFB3BFFD)],
              ),
              unselectedGradientColor: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFF7F8F8), Color(0xFFF7F8F8)],
              ),
            ),
          ],
        )),
        GestureDetector(
          onTap: () => {
            PersistentNavBarNavigator.pushNewScreen(context,
                screen: WorkoutTracerScreen(),
                withNavBar: false,
                pageTransitionAnimation: PageTransitionAnimation.cupertino)
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(
                side: BorderSide(width: 0.80, color: Color(0xFFC58BF2)),
              ),
            ),
            child: const Icon(
              Icons.chevron_right,
              color: Color(0xFFC58BF2),
            ),
          ),
        )
      ]),
    );
  }
}
