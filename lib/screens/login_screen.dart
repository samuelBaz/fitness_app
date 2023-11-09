import 'package:fitness_app/app_routes.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/button_fit.dart';
import 'package:fitness_app/widgets/text_field_fit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                      Text("Here there,",
                          textScaler: MediaQuery.of(context).textScaler ==
                                  TextScaler.noScaling
                              ? TextScaler.noScaling
                              : TextScaler.linear(1.5),
                          style: const TextStyle(
                            color: Color(0xFF1D1517),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text("Welcome Back",
                          maxLines: 1,
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
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => {print('Press Forgot Password')},
                            child: const Text("Forgot your password?",
                                style: TextStyle(
                                    color: Color(0xFFACA3A5),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline)),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            Column(
              children: [
                ButtonFit(
                    text: "Login",
                    primary: true,
                    prefixIconString: 'assets/icons/login.png',
                    onPressed: () =>
                        {Navigator.pushNamed(context, AppRoutes.wellcome)}),
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
                            side: BorderSide(
                                width: 0.80, color: Color(0xFFDDD9DA)),
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
                          side:
                              BorderSide(width: 0.80, color: Color(0xFFDDD9DA)),
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
                      text: "Don’t have an account yet? ",
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
                          Navigator.pushNamed(context, AppRoutes.signUp);
                        },
                      text: "Register",
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
//PageView
