import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/button_fit.dart';
import 'package:fitness_app/widgets/text_field_fit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("Here there,",
                      style: TextStyle(
                        color: Color(0xFF1D1517),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("Create an account",
                      style: TextStyle(
                        color: Color(0xFF1D1517),
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextFieldFit(
                      hintText: "First Name",
                      prefixIconString: 'assets/icons/profile.png'),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextFieldFit(
                      hintText: "Last Name",
                      prefixIconString: 'assets/icons/profile.png'),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextFieldFit(
                      hintText: "Email",
                      prefixIconString: 'assets/icons/message.png'),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextFieldFit(
                    hintText: "Password",
                    prefixIconString: 'assets/icons/lock.png',
                    suffixIconString: 'assets/icons/hide_password.png',
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                        checkColor: Constants.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        side: const BorderSide(color: Constants.borderColor),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 120,
                        child: Text.rich(TextSpan(children: [
                          const TextSpan(
                            text: 'By continuing you accept our ',
                            style: TextStyle(
                              color: Color(0xFFACA3A5),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("Press Privacity policy");
                                },
                              text: 'Privacity Policy',
                              style: const TextStyle(
                                  color: Color(0xFFACA3A5),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline)),
                          const TextSpan(
                              text: " and ",
                              style: TextStyle(
                                color: Color(0xFFACA3A5),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              )),
                          TextSpan(
                            text: 'Term of Use',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Press Privacity policy");
                              },
                            style: const TextStyle(
                                color: Color(0xFFACA3A5),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline),
                          )
                        ])),
                      )
                    ],
                  ),
                ],
              )),
        ),
        Column(
          children: [
            ButtonFit(
                text: "Register",
                primary: true,
                onPressed: () =>
                    {Navigator.pushNamed(context, AppRoutes.completeProfile)}),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 1,
                        color: Constants.borderColor,
                      )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or",
                        style: TextStyle(
                          color: Color(0xFF1D1517),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 1,
                        color: Constants.borderColor,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.80, color: Color(0xFFDDD9DA)),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Center(child: Image.asset('assets/google.png')),
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 50,
                  height: 50,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.80, color: Color(0xFFDDD9DA)),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Center(child: Image.asset('assets/facebook.png')),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: Text.rich(TextSpan(children: [
                const TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushNamed(context, AppRoutes.login);
                    },
                  text: "Login",
                  style: const TextStyle(
                    color: Color(0xFFC58BF2),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ])),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        )
      ],
    )));
  }
}
