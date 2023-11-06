import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/button_fit.dart';
import 'package:fitness_app/widgets/text_field_fit.dart';
import 'package:fitness_app/widgets/unit_fit.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Flex(
        direction: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Stack(
              children: [
                Center(
                  child: Image.asset('assets/bg_complete_profile.png'),
                ),
                Center(
                  child: Image.asset('assets/img_complete_profile.png'),
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              const Text(
                "Let’s complete your profile",
                style: TextStyle(
                  color: Color(0xFF1D1517),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                "It will help us to know more about you!",
                style: TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    //DropdownButtonFormField
                    TextFieldFit(
                        hintText: "Choose Gender",
                        prefixIconString: 'assets/icons/users.png'),
                    SizedBox(
                      height: 12,
                    ),
                    TextFieldFit(
                      hintText: "Date of Birth",
                      prefixIconString: "assets/icons/calendar.png",
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldFit(
                            hintText: "Your Weight",
                            prefixIconString: "assets/icons/weight_scale.png",
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        UnitFit(unit: "KG")
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldFit(
                            hintText: "Your Height",
                            prefixIconString: "assets/icons/swap.png",
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: UnitFit(unit: "CM"),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
          ButtonFit(
            text: "Next",
            onPressed: () => {},
            primary: true,
            suffixIcon: const Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
          )
        ],
      )),
    );
  }
}
