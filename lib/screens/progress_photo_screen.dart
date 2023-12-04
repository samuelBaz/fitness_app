import 'package:fitness_app/widgets/app_bar_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressPhotoScreen extends StatefulWidget {
  const ProgressPhotoScreen({super.key});

  @override
  State<ProgressPhotoScreen> createState() => _ProgressPhotoScreenState();
}

class _ProgressPhotoScreenState extends State<ProgressPhotoScreen>
    with SingleTickerProviderStateMixin {
  final double scale = 1.6;

  AlignmentGeometry alig = Alignment.center;
  double opacityTest = 1;
  double radius_change = 0;
  bool visible = true;
  bool delete = false;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        const AppBarFit(title: "Progress Photo"),
        delete
            ? SizedBox()
            : AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: visible ? 1.0 : 0.0,
                onEnd: () => setState(() {
                  delete = true;
                }),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF0000).withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                            shape: OvalBorder(), color: Colors.white),
                        child: SizedBox(
                          width: 45,
                          height: 45,
                          child: SvgPicture.asset(
                            'assets/reminders-calender.svg',
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Reminders!",
                                style: TextStyle(
                                  color: Color(0xFFFF0000),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Next Photos Fall On July 08',
                                style: TextStyle(
                                  color: Color(0xFF1D1517),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ]),
                      ),
                      InkWell(
                        onTap: () => setState(() {
                          visible = !visible;
                        }),
                        child: SvgPicture.asset('assets/icons/x 5.svg'),
                      )
                    ],
                  ),
                ),
              ),
        Container(
          width: double.infinity,
          height: 137,
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.00, 0.08),
              end: Alignment(1, -0.08),
              colors: [
                Color(0xFF92A3FD).withOpacity(0.2),
                Color(0xFF9DCEFF).withOpacity(0.2)
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Track Your Progress Each Month With ',
                          style: TextStyle(
                            color: Color(0xFF1D1517),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Photo',
                          style: TextStyle(
                            color: Color(0xFF92A3FD),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 95,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(-1.00, 0.08),
                        end: Alignment(1, -0.08),
                        colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      'Learn More',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              )),
              SvgPicture.asset('assets/Frame.svg')
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Row(
                children: [Text("Gallery"), Text("See more")],
              ),
              _createSectionGalery("2 feb", [
                "assets/Rectangle 5834.svg",
                "assets/Rectangle 5836.svg",
                "assets/Rectangle 5834.svg",
                "assets/Rectangle 5834.svg",
                "assets/Rectangle 5836.svg",
                "assets/Rectangle 5834.svg"
              ]),
              _createSectionGalery("2 feb", [
                "assets/Rectangle 5834.svg",
                "assets/Rectangle 5836.svg",
                "assets/Rectangle 5834.svg"
              ]),
            ],
          ),
        )
      ],
    ));
  }

  Widget _createSectionGalery(String date, List<String> images) {
    return Container(
      child: Column(children: [
        Text(date),
        Container(
          height: 90,
          color: Colors.amber,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: images
                .map((image) => Container(
                      width: 90,
                      height: 90,
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      color: Colors.purpleAccent,
                    ))
                .toList(),
          ),
        )
      ]),
    );
  }
}
