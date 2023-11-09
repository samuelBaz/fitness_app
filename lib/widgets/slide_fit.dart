import 'package:flutter/material.dart';

class SlideFit extends StatefulWidget {
  final String title;
  final String description;
  final String imageString;

  const SlideFit(
      {super.key,
      required this.title,
      required this.description,
      required this.imageString});

  @override
  State<SlideFit> createState() => _SlideFitState();
}

class _SlideFitState extends State<SlideFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            "assets/bg_goals_left.png",
          ),
          Expanded(
              child: Stack(
            children: [
              Center(
                child: Image.asset("assets/bg_goals_center.png"),
              ),
              Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(widget.imageString),
                      Text(widget.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          )),
                      Container(
                        height: 1,
                        width: 50,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 4, bottom: 8),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            widget.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ]),
              )
            ],
          )),
          Image.asset(
            "assets/bg_goals_rigth.png",
          )
        ],
      ),
    );
  }
}
