import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BannerUnityFit extends StatefulWidget {
  final String title;
  final String description;
  final String image;

  const BannerUnityFit(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  State<BannerUnityFit> createState() => _BannerUnityFitState();
}

class _BannerUnityFitState extends State<BannerUnityFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C1D242A),
            blurRadius: 40,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Color(0xFF1D1517),
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.description,
          style: const TextStyle(
            color: Color(0xFF92A3FD),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.image,
              height: 83,
            )
          ],
        )
      ]),
    );
  }
}
