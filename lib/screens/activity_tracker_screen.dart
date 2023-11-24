import 'package:fitness_app/widgets/app_bar_fit.dart';
import 'package:fitness_app/widgets/circle_item_fit.dart';
import 'package:fitness_app/widgets/select_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityTrackerScreen extends StatefulWidget {
  const ActivityTrackerScreen({super.key});

  @override
  State<ActivityTrackerScreen> createState() => _ActivityTrackerScreenState();
}

class _ActivityTrackerScreenState extends State<ActivityTrackerScreen> {
  List<String> options = ["Weekly", "Monthly", "Yearly"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        const AppBarFit(
          title: "Activity Tracer",
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: Color(0xFF92A3FD).withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
          child: Column(children: [
            Row(
              children: [
                const Expanded(
                    child: Text(
                  'Today Target',
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                )),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-1.00, 0.08),
                      end: Alignment(1, -0.08),
                      colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 14,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/glass.svg"),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '8L',
                                  style: TextStyle(
                                    color: Color(0xFF92A3FD),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Water Intake',
                                  style: TextStyle(
                                    color: Color(0xFF7B6F72),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/boots.svg"),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '2400',
                                  style: TextStyle(
                                    color: Color(0xFF92A3FD),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Food Steeps',
                                  style: TextStyle(
                                    color: Color(0xFF7B6F72),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 16),
          child: Column(children: [
            Row(
              children: [
                const Expanded(
                    child: Text(
                  'Activity Progress',
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                )),
                SelectFit(options: options)
              ],
            ),
            SvgPicture.asset("assets/Activity_Progress.svg")
          ]),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const Row(
              children: [
                Expanded(
                    child: Text(
                  'Latest Activity',
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                )),
                Text(
                  'See more',
                  style: TextStyle(
                    color: Color(0xFFACA3A5),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x111D1617),
                    blurRadius: 40,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                  )
                ],
              ),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleItemFit(size: 50),
                    SvgPicture.asset("assets/Latest-Pic.svg")
                  ],
                ),
                const Expanded(
                    child: SizedBox(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Drinking 300ml Water',
                        style: TextStyle(
                          color: Color(0xFF1D1517),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'About 3 minutes ago',
                        style: TextStyle(
                          color: Color(0xFFA3A8AC),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                )),
                const Icon(
                  Icons.more_horiz,
                  color: Color(0xffADA4A5),
                )
              ]),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleItemFit(size: 50),
                    SvgPicture.asset("assets/Latest-Pic.svg")
                  ],
                ),
                const Expanded(
                    child: SizedBox(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Drinking 300ml Water',
                        style: TextStyle(
                          color: Color(0xFF1D1517),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'About 3 minutes ago',
                        style: TextStyle(
                          color: Color(0xFFA3A8AC),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                )),
                const Icon(
                  Icons.more_horiz,
                  color: Color(0xffADA4A5),
                )
              ]),
            )
          ]),
        )
      ],
    ));
  }
}
