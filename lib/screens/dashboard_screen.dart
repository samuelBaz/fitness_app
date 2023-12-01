import 'package:fitness_app/screens/activity_tracker_screen.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/screens/profile_screen.dart';
import 'package:fitness_app/screens/progress_photo_screen.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/dot_fit.dart';
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

  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const ActivityTrackerScreen(),
      SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify widgets.
              key: Key(item),
              // Provide a function that tells the app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                // Remove the item from the data source.
                setState(() {
                  items.removeAt(index);
                });

                // Then show a snackbar.
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('$item dismissed')));
              },
              // Show a red background as the item is swiped away.
              background: Container(color: Colors.red),
              child: ListTile(
                title: Text(item),
              ),
            );
          },
        ),
      ),
      const ProgressPhotoScreen(),
      const ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Home_Active.svg"),
              const DotFit()
            ],
          ),
          inactiveIcon: SvgPicture.asset(
            "assets/icons/Home.svg",
          )),
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Activity.svg",
                color: Constants.colorActive),
            const DotFit()
          ],
        ),
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
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Camera.svg",
                color: Constants.colorActive),
            const DotFit()
          ],
        ),
        inactiveIcon: SvgPicture.asset(
          "assets/icons/Camera.svg",
          color: Constants.borderColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Profile_Active.svg",
                color: Constants.colorActive),
            const DotFit()
          ],
        ),
        inactiveIcon: SvgPicture.asset(
          "assets/icons/Profile.svg",
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
          borderRadius: BorderRadius.circular(0.0),
          boxShadow: [BoxShadow(blurRadius: 40, color: new Color(0x191D1617))]),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
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
