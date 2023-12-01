import 'dart:math';

import 'package:collapsible_app_bar/collapsible_app_bar.dart';
import 'package:fitness_app/widgets/app_bar_fit.dart';
import 'package:fitness_app/widgets/item_workout_fit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutTracerScreen extends StatefulWidget {
  const WorkoutTracerScreen({super.key});

  @override
  State<WorkoutTracerScreen> createState() => _WorkoutTracerScreenState();
}

class _WorkoutTracerScreenState extends State<WorkoutTracerScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  bool appBarCollapsed = false;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CollapsibleAppBar(
        // Callback after the leading icon is clicked, usually go back.
        onPressedBack: () {
          Navigator.pop(context);
        },
        // The title text displayed when the app bar is collapsed.
        shrinkTitle: 'Workout Tracker',
        shrinkTitleStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        pinned: true,
        backgroundColor: Colors.transparent,
        customLeading: Container(
          alignment: Alignment.centerRight,
          child: GestureDetector(
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
                    color: const Color(0xffFFF7F8F8)),
                child: const Icon(Icons.chevron_left)),
          ),
        ),
        actions: [
          Container(
              height: 32,
              width: 32,
              margin: EdgeInsets.only(right: 30),
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
        ],
        forceElevated: true,
        elevation: 0.3,
        shrinkThreshold: 10,
        // We can listen for the collapsed status change.
        onChange: (collapsed) {
          setState(() {
            appBarCollapsed = collapsed;
          });
        },
        // Set the header's height, this must be set according to your header's height.
        expandedHeight: 250,
        // The header can be any widget, as long as its height is in bound.
        header: _buildHeader(context),
        // The body contains TabBarView so we don't want to use ScrollContentWrapper,
        // but we should use wrapper for the children of the TabBarView in order
        // to avoid the overlap of the body's content.
        userWrapper: false,
        body: Container(
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(),
              gradient: LinearGradient(
                end: Alignment(-1.00, 0.08),
                begin: Alignment(1, -0.08),
                colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 60),
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
              ),
              child: ScrollContentWrapper(
                  child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
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
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 16),
                    child: const Column(children: [
                      Row(
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
                      SizedBox(
                        height: 16,
                      ),
                      ItemWorkOutFit(
                        color: Colors.white,
                        progress: 30,
                      ),
                      ItemWorkOutFit(
                        color: Color(0xFF97B5FE),
                        mainColor: false,
                        progress: 60,
                      ),
                      ItemWorkOutFit(
                        color: Colors.white,
                        progress: 85,
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Column(children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            "You’ll Need",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(color: Colors.black, fontSize: 16),
                          )),
                          const Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: Text(
                              '5 Items',
                              style: TextStyle(
                                color: Color(0xFFACA3A5),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 190,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _createItem("assets/barbel.svg", "Berbell"),
                            _createItem(
                                "assets/skipping-rope.svg", "Skipping Rope"),
                            _createItem("assets/barbel.svg", "Skipping Rope"),
                            _createItem("assets/skipping-rope.svg", "Berbell"),
                            _createItem("assets/barbel.svg", "Skipping Rope"),
                          ],
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 30, left: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Find Something to Eat',
                            style: TextStyle(
                              color: Color(0xFF1D1517),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 200,
                                  height: 200,
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-1.00, 0.08),
                                      end: Alignment(1, -0.08),
                                      colors: [
                                        Color(0xFF92A3FD).withOpacity(0.2),
                                        Color(0xFF9DCEFF).withOpacity(0.2)
                                      ],
                                    ),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(22),
                                        topRight: Radius.circular(100),
                                        bottomLeft: Radius.circular(22),
                                        bottomRight: Radius.circular(22),
                                      ),
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
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, right: 11),
                                          child: SvgPicture.asset(
                                              "assets/pie.svg"),
                                        ),
                                        Container(
                                          width: 200,
                                          margin: EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Breakfast',
                                                style: TextStyle(
                                                  color: Color(0xFF1D1517),
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                '120+ Foods',
                                                style: TextStyle(
                                                  color: Color(0xFF7B6F72),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Container(
                                                width: 98,
                                                height: 30,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15),
                                                alignment: Alignment.center,
                                                decoration: ShapeDecoration(
                                                  gradient:
                                                      const LinearGradient(
                                                    begin:
                                                        Alignment(-1.00, 0.08),
                                                    end: Alignment(1, -0.08),
                                                    colors: [
                                                      Color(0xFF92A3FD),
                                                      Color(0xFF9DCEFF)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: const Text(
                                                  'Select',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0.12,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ]),
                                ),
                                Container(
                                    width: 200,
                                    height: 200,
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-1.00, 0.08),
                                        end: Alignment(1, -0.08),
                                        colors: [
                                          Color(0xFFC58BF2).withOpacity(0.2),
                                          Color(0xFFEEA4CE).withOpacity(0.2)
                                        ],
                                      ),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(22),
                                          topRight: Radius.circular(100),
                                          bottomLeft: Radius.circular(22),
                                          bottomRight: Radius.circular(22),
                                        ),
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
                                      children: [
                                        Container(
                                          width: 200,
                                          margin: EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'Breakfast',
                                                style: TextStyle(
                                                  color: Color(0xFF1D1517),
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                '120+ Foods',
                                                style: TextStyle(
                                                  color: Color(0xFF7B6F72),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Container(
                                                width: 98,
                                                height: 30,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15),
                                                alignment: Alignment.center,
                                                decoration: ShapeDecoration(
                                                  gradient:
                                                      const LinearGradient(
                                                    begin:
                                                        Alignment(-1.00, 0.08),
                                                    end: Alignment(1, -0.08),
                                                    colors: [
                                                      Color(0xFF92A3FD),
                                                      Color(0xFF9DCEFF)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: const Text(
                                                  'Select',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0.12,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                            top: 8,
                                            right: 11,
                                            child: SvgPicture.asset(
                                                "assets/bread.svg"))
                                      ],
                                    )),
                                Container(
                                  width: 200,
                                  height: 200,
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-1.00, 0.08),
                                      end: Alignment(1, -0.08),
                                      colors: [
                                        Color(0xFF92A3FD).withOpacity(0.2),
                                        Color(0xFF9DCEFF).withOpacity(0.2)
                                      ],
                                    ),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(22),
                                        topRight: Radius.circular(100),
                                        bottomLeft: Radius.circular(22),
                                        bottomRight: Radius.circular(22),
                                      ),
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
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, right: 11),
                                          child: SvgPicture.asset(
                                              "assets/pie.svg"),
                                        ),
                                        Container(
                                          width: 200,
                                          margin: EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Breakfast',
                                                style: TextStyle(
                                                  color: Color(0xFF1D1517),
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                '120+ Foods',
                                                style: TextStyle(
                                                  color: Color(0xFF7B6F72),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Container(
                                                width: 98,
                                                height: 30,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15),
                                                alignment: Alignment.center,
                                                decoration: ShapeDecoration(
                                                  gradient:
                                                      const LinearGradient(
                                                    begin:
                                                        Alignment(-1.00, 0.08),
                                                    end: Alignment(1, -0.08),
                                                    colors: [
                                                      Color(0xFF92A3FD),
                                                      Color(0xFF9DCEFF)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: const Text(
                                                  'Select',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0.12,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ]),
                                ),
                                Container(
                                    width: 200,
                                    height: 200,
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-1.00, 0.08),
                                        end: Alignment(1, -0.08),
                                        colors: [
                                          Color(0xFFC58BF2).withOpacity(0.2),
                                          Color(0xFFEEA4CE).withOpacity(0.2)
                                        ],
                                      ),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(22),
                                          topRight: Radius.circular(100),
                                          bottomLeft: Radius.circular(22),
                                          bottomRight: Radius.circular(22),
                                        ),
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
                                      children: [
                                        Container(
                                          width: 200,
                                          margin: EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'Breakfast',
                                                style: TextStyle(
                                                  color: Color(0xFF1D1517),
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                '120+ Foods',
                                                style: TextStyle(
                                                  color: Color(0xFF7B6F72),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Container(
                                                width: 98,
                                                height: 30,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15),
                                                alignment: Alignment.center,
                                                decoration: ShapeDecoration(
                                                  gradient:
                                                      const LinearGradient(
                                                    begin:
                                                        Alignment(-1.00, 0.08),
                                                    end: Alignment(1, -0.08),
                                                    colors: [
                                                      Color(0xFF92A3FD),
                                                      Color(0xFF9DCEFF)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: const Text(
                                                  'Select',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0.12,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                            top: 8,
                                            right: 11,
                                            child: SvgPicture.asset(
                                                "assets/bread.svg"))
                                      ],
                                    ))
                              ],
                            ),
                          )
                        ]),
                  )
                ],
              )),
            )),
      )),
    );
  }

  Widget _createItem(String asset, String title) {
    return Container(
      height: 190,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130,
            height: 130,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: ShapeDecoration(
              color: Color(0xFFF7F8F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: SvgPicture.asset(asset),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 274,
      padding: EdgeInsets.all(30),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(),
        gradient: LinearGradient(
          end: Alignment(-1.00, 0.08),
          begin: Alignment(1, -0.08),
          colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
        ),
      ),
      child: SvgPicture.asset("assets/chart_4.svg"),
    );
  }
}
