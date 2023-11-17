import 'package:fitness_app/widgets/item_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Row(children: [
              GestureDetector(
                onTap: () => {Navigator.pop(context)},
                child: Container(
                    height: 32,
                    width: 32,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: Color(0xffFFF7F8F8)),
                    child: Icon(Icons.chevron_left)),
              ),
              const Expanded(
                child: Text(
                  'Notification',
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(children: [
                  ItemFit(
                    startIcon: SvgPicture.asset('assets/icons/Vector1.svg'),
                    title: "Hey, it’s time for lunch",
                    description: "About 1 minutes ago",
                  ),
                  ItemFit(
                    mainColor: false,
                    startIcon: SvgPicture.asset('assets/icons/Vector.svg'),
                    title: "Don’t miss your lowerbody workout",
                    description: "About 3 hours ago",
                  ),
                  ItemFit(
                    startIcon: SvgPicture.asset('assets/icons/Vector3.svg'),
                    title: "Hey, let’s add some meals for your b...",
                    description: "About 3 hours ago",
                  ),
                  ItemFit(
                    startIcon: SvgPicture.asset('assets/icons/Vector4.svg'),
                    title: "Don’t miss your lowerbody workout",
                    description: "About 3 hours ago",
                  ),
                  const ItemFit(
                    title: "Don’t miss your lowerbody workout",
                    description: "About 3 hours ago",
                  ),
                  ItemFit(
                    mainColor: false,
                    startIcon: SvgPicture.asset('assets/icons/Vector.svg'),
                    title: "Don’t miss your lowerbody workout",
                    description: "About 3 hours ago",
                  ),
                  ItemFit(
                    startIcon: SvgPicture.asset('assets/icons/Vector1.svg'),
                    title: "Hey, it’s time for lunch",
                    description: "About 1 minutes ago",
                  ),
                  ItemFit(
                    mainColor: false,
                    startIcon: SvgPicture.asset('assets/icons/Vector.svg'),
                    title: "Don’t miss your lowerbody workout",
                    description: "About 3 hours ago",
                  ),
                  ItemFit(
                    startIcon: SvgPicture.asset('assets/icons/Vector3.svg'),
                    title: "Hey, let’s add some meals for your b...",
                    description: "About 3 hours ago",
                  ),
                  ItemFit(
                    startIcon: SvgPicture.asset('assets/icons/Vector4.svg'),
                    title: "Don’t miss your lowerbody workout",
                    description: "About 3 hours ago",
                  ),
                  const ItemFit(
                    title: "Don’t miss your lowerbody workout",
                    description: "About 3 hours ago",
                  ),
                  ItemFit(
                    mainColor: false,
                    startIcon: SvgPicture.asset('assets/icons/Vector.svg'),
                    title: "Don’t miss your lowerbody workout",
                    description: "About 3 hours ago",
                  ),
                ]),
              )
            ],
          ))
        ],
      )),
    );
  }
}
