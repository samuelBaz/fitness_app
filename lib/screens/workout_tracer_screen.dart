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
                    color: Color(0xffFFF7F8F8)),
                child: Icon(Icons.chevron_left)),
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
              margin: EdgeInsets.only(top: 60),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
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
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                    child: Column(children: [
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
                  )
                ],
              )),
            )),
      )),
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
