import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/screens/notifications_screen.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/circles_fit.dart';
import 'package:fitness_app/widgets/pie_chart_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                        Container(
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
          ],
        ))
      ],
    ));
  }
}
