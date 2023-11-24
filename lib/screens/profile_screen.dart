import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/app_bar_fit.dart';
import 'package:fitness_app/widgets/circle_item_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(children: [
      AppBarFit(
          title: AppLocalizations.of(context)!.profile("samuel@gmail.com")),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleItemFit(size: 55),
              SvgPicture.asset(
                "assets/Group.svg",
                width: 35,
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          const Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stefani Wong',
                style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Lose a Fat Program',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )),
          Container(
              alignment: Alignment.center,
              width: 83,
              height: 30,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(-1.00, 0.08),
                  end: Alignment(1, -0.08),
                  colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ))
        ]),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        child: Row(children: [
          Expanded(flex: 1, child: createWidget("180cm", "Height")),
          const SizedBox(
            width: 16,
          ),
          Expanded(flex: 1, child: createWidget("65Kg", "Weight")),
          const SizedBox(
            width: 16,
          ),
          Expanded(flex: 1, child: createWidget("22yo", "Age")),
        ]),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.all(20),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            AppLocalizations.of(context)!.account,
            style: const TextStyle(
              color: Color(0xFF1D1517),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/Profile_Icon.svg'),
              ),
              const Expanded(
                  child: Text(
                'Personal Data',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )),
              const Icon(
                Icons.chevron_right,
                color: Color(0xff7B6F72),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/Document.svg'),
              ),
              const Expanded(
                  child: Text(
                'Achievement',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )),
              const Icon(
                Icons.chevron_right,
                color: Color(0xff7B6F72),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/Graph.svg'),
              ),
              const Expanded(
                  child: Text(
                'Activity History',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )),
              const Icon(
                Icons.chevron_right,
                color: Color(0xff7B6F72),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/Chart.svg'),
              ),
              const Expanded(
                  child: Text(
                'Workout Progress',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )),
              const Icon(
                Icons.chevron_right,
                color: Color(0xff7B6F72),
              )
            ],
          )
        ]),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        padding: EdgeInsets.all(20),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Notification',
            style: TextStyle(
              color: Color(0xFF1D1517),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/Notification_Color.svg'),
              ),
              const Expanded(
                  child: Text(
                'Pop-up Notification',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )),
              FlutterSwitch(
                width: 36.0,
                height: 18.0,
                toggleSize: 10.0,
                value: true,
                borderRadius: 15.0,
                activeColor: Constants.colorActive,
                onToggle: (val) {},
              ),
            ],
          ),
        ]),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.all(20),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Others',
            style: TextStyle(
              color: Color(0xFF1D1517),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/Message.svg'),
              ),
              const Expanded(
                  child: Text(
                'Contact Us',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )),
              const Icon(
                Icons.chevron_right,
                color: Color(0xff7B6F72),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/Shield Done.svg'),
              ),
              const Expanded(
                  child: Text(
                'Privacy Policy',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )),
              const Icon(
                Icons.chevron_right,
                color: Color(0xff7B6F72),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/Setting.svg'),
              ),
              const Expanded(
                  child: Text(
                'Settings',
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )),
              const Icon(
                Icons.chevron_right,
                color: Color(0xff7B6F72),
              )
            ],
          ),
        ]),
      ),
    ]));
  }

  Widget createWidget(String title, String description) {
    return Container(
      height: 65,
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
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF92A3FD),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            color: Color(0xFF7B6F72),
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        )
      ]),
    );
  }
}
