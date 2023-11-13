import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleFit extends StatelessWidget {
  final double width;
  final double height;

  const CircleFit({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: Container(
        width: width,
        height: height,
        decoration:
            const ShapeDecoration(shape: OvalBorder(), color: Colors.white),
      ),
    );
  }
}
