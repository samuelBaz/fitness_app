import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/screens/notifications_screen.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/banner_unity_fit.dart';
import 'package:fitness_app/widgets/circle_item_fit.dart';
import 'package:fitness_app/widgets/circles_fit.dart';
import 'package:fitness_app/widgets/item_workout_fit.dart';
import 'package:fitness_app/widgets/pie_chart_fit.dart';
import 'package:fitness_app/widgets/row_real_time_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String optionSelected = "Weekly";
  List<String> options = ["Weekly", "Monthly", "Yearly"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
            child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              child: Row(children: [
                const Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back,',
                      style: TextStyle(
                        color: Color(0xFFACA3A5),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Stefani Wong',
                      style: TextStyle(
                        color: Color(0xFF1D1517),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                )),
                badges.Badge(
                    showBadge: true,
                    badgeStyle: badges.BadgeStyle(padding: EdgeInsets.all(3)),
                    position: badges.BadgePosition.topEnd(top: 0.5, end: 0),
                    child: GestureDetector(
                      onTap: () => {
                        PersistentNavBarNavigator.pushNewScreen(context,
                            screen: NotificationsScreen(),
                            withNavBar: false,
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino)
                      },
                      child: SvgPicture.asset("assets/icons/Notification.svg"),
                    ))
              ]),
            ),
            Container(
              width: double.infinity,
              height: 146,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  end: Alignment(-1.00, 0.08),
                  begin: Alignment(1, -0.08),
                  colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x4C95ADFE),
                    blurRadius: 22,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned(
                      top: 12,
                      left: 109,
                      child: CircleFit(height: 8, width: 8)),
                  const Positioned(
                      top: 22,
                      right: 140,
                      child: CircleFit(height: 8, width: 8)),
                  const Positioned(
                      bottom: 32,
                      left: 132,
                      child: CircleFit(height: 8, width: 8)),
                  const Positioned(
                      bottom: 11,
                      right: 132,
                      child: CircleFit(height: 8, width: 8)),
                  const Positioned(
                      left: -20,
                      bottom: -20,
                      child: CircleFit(height: 50, width: 50)),
                  const Positioned(
                      right: -10,
                      bottom: -10,
                      child: CircleFit(height: 50, width: 50)),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'BMI (Body Mass Index)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                'You have a normal weight',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              InkWell(
                                onTap: () => print("View More"),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    gradient: const LinearGradient(
                                      end: Alignment(-1.00, 0.08),
                                      begin: Alignment(1, -0.08),
                                      colors: [
                                        Color(0xFFC58BF2),
                                        Color(0xFFEEA4CE)
                                      ],
                                    ),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'View More',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 106,
                          height: 106,
                          child: PieChartFit(),
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: ShapeDecoration(
                  color: Color(0xffEAF0FE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
              child: Row(children: [
                const Expanded(
                    child: Text(
                  'Today Target',
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )),
                Container(
                  width: 70,
                  height: 30,
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
                  child: const Center(
                      child: Text(
                    'Check',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Activity Status',
                      style: TextStyle(
                        color: Color(0xFF1D1517),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SvgPicture.asset("assets/chart_1.svg", fit: BoxFit.cover)
                  ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(children: [
                Expanded(
                    child: Container(
                  height: 316,
                  padding:
                      EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 8),
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
                  child: const Row(children: [
                    StepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 60,
                      direction: Axis.vertical,
                      progressDirection: TextDirection.rtl,
                      size: 20,
                      padding: 0,
                      roundedEdges: Radius.circular(10),
                      selectedGradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFFC58BF2), Color(0xFFB3BFFD)],
                      ),
                      unselectedGradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFFF7F8F8), Color(0xFFF7F8F8)],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Water Intake',
                              style: TextStyle(
                                color: Color(0xFF1C242A),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '4 Liters',
                              style: TextStyle(
                                color: Color(0xFF92A3FD),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Real time updates',
                              style: TextStyle(
                                color: Color(0xFF7B6F72),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RowRealTimeFit(),
                            RowRealTimeFit(),
                            RowRealTimeFit(),
                            RowRealTimeFit(),
                            RowRealTimeFit(),
                            RowRealTimeFit(),
                          ]),
                    )
                  ]),
                )),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                    child: Column(
                  children: [
                    BannerUnityFit(
                        title: "Sleep",
                        description: "8h 20m",
                        image: 'assets/chart_2.svg'),
                    SizedBox(
                      height: 15,
                    ),
                    BannerUnityFit(
                        title: "Calories",
                        description: "760 kCal",
                        image: 'assets/chart_3.svg')
                  ],
                ))
              ]),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Column(children: [
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'Workout Progress',
                      style: TextStyle(
                        color: Color(0xFF1D1517),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-1.00, 0.08),
                          end: Alignment(1, -0.08),
                          colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: DropdownButtonFormField(
                        icon: Image.asset(
                          'assets/icons/arrow_down.png',
                          color: Colors.white,
                        ),
                        dropdownColor: Constants.primaryColor,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 15, right: 10, top: 0, bottom: 15),
                            constraints: BoxConstraints(maxHeight: 30),
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                            border: InputBorder.none),
                        value: optionSelected,
                        onChanged: (value) => {},
                        items: options.map((String item) {
                          return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ));
                        }).toList(),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SvgPicture.asset('assets/chart_4.svg')
              ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: [
                const Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Latest Workout',
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
                ItemWorkOutFit(),
                ItemWorkOutFit(),
                ItemWorkOutFit(),
              ]),
            )
          ],
        ))
      ],
    ));
  }
}
