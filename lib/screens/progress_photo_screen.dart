import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressPhotoScreen extends StatefulWidget {
  const ProgressPhotoScreen({super.key});

  @override
  State<ProgressPhotoScreen> createState() => _ProgressPhotoScreenState();
}

class _ProgressPhotoScreenState extends State<ProgressPhotoScreen> {
  final double scale = 1.6;

  AlignmentGeometry alig = Alignment.center;
  double opacityTest = 1;
  double radius_change = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: ShapeDecoration(
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius_change))),
          ),
          AnimatedContainer(
            duration: Duration(seconds: 2),
            alignment: Alignment.bottomCenter,
            onEnd: () => print("Animation was finished"),
            curve: Curves.easeInCirc,
            decoration: ShapeDecoration(
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius_change))),
            width: 200,
            height: 200,
            child: Image.asset("assets/google.png"),
          ),
          IconButton(
              onPressed: () => setState(() {
                    radius_change = radius_change + 10;
                  }),
              icon: Icon(Icons.ac_unit_sharp))
        ],
      ),
    ));
  }
}
