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
  String optionSelected = "Masculino";
  List<String> options = ["Masculino", "Femenino"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: ListView(
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
                Column(
                  children: [
                    const SizedBox(height: 16),
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
                    const SizedBox(height: 16),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Container(
                              decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1,
                                          color: Constants.textInputColorBg),
                                      borderRadius: BorderRadius.circular(14))),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    hintText: "Choose Gender",
                                    fillColor: Constants.textInputColorBg,
                                    filled: true,
                                    hintStyle: const TextStyle(
                                      color: Color(0xFFACA3A5),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    prefixIcon:
                                        Image.asset('assets/icons/users.png'),
                                    border: InputBorder.none),
                                value: optionSelected,
                                items: options.map((String gender) {
                                  return DropdownMenuItem(
                                      value: gender,
                                      child: Text(
                                        gender,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ));
                                }).toList(),
                                icon:
                                    Image.asset('assets/icons/arrow_down.png'),
                                onChanged: (String? opction) {},
                              )),
                          const SizedBox(
                            height: 12,
                          ),
                          const TextFieldFit(
                            hintText: "Date of Birth",
                            prefixIconString: "assets/icons/calendar.png",
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: TextFieldFit(
                                  hintText: "Your Weight",
                                  prefixIconString:
                                      "assets/icons/weight_scale.png",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              UnitFit(unit: "KG")
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Flex(
                            direction: Axis.horizontal,
                            children: [
                              const Expanded(
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
                ),
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
            ),
          ),
        ],
      )),
    );
  }
}
