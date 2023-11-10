import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      Text("Pagina 1"),
      Text("Pagina 2"),
      Text("Pagina 3"),
      Text("Pagina 4"),
      Text("Pagina 5"),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/icons/Home.svg"),
          inactiveIcon: SvgPicture.asset(
            "assets/icons/Home.svg",
            color: Constants.borderColor,
          )),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset("assets/icons/Activity.svg",
            color: Constants.colorActive),
        inactiveIcon: SvgPicture.asset(
          "assets/icons/Activity.svg",
          color: Constants.borderColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/icons/Search.svg",
        ),
        activeColorPrimary: Color(0xff96B4FD),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset("assets/icons/Camera.svg",
            color: Constants.colorActive),
        inactiveIcon: SvgPicture.asset(
          "assets/icons/Camera.svg",
          color: Constants.borderColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset("assets/icons/Profile.svg",
            color: Constants.colorActive),
        inactiveIcon: SvgPicture.asset(
          "assets/icons/Profile.svg",
          color: Constants.borderColor,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      navBarHeight: 70,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
    ;
  }
}
