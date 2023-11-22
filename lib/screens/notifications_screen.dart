import 'package:fitness_app/widgets/app_bar_fit.dart';
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
          const AppBarFit(title: "Notification"),
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
