import 'package:flutter/material.dart';

class AppBarFit extends StatefulWidget {
  final String title;
  const AppBarFit({super.key, required this.title});

  @override
  State<AppBarFit> createState() => _AppBarFitState();
}

class _AppBarFitState extends State<AppBarFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Row(children: [
        GestureDetector(
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          child: Container(
              height: 32,
              width: 32,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Color(0xffFFF7F8F8)),
              child: Icon(Icons.chevron_left)),
        ),
        Expanded(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
            height: 32,
            width: 32,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Color(0xffFFF7F8F8)),
            child: Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: 4,
                  height: 4,
                  decoration: const ShapeDecoration(
                      shape: OvalBorder(), color: Colors.black),
                ),
                const SizedBox(
                  width: 2,
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: const ShapeDecoration(
                      shape: OvalBorder(), color: Colors.black),
                )
              ]),
            )),
      ]),
    );
  }
}
