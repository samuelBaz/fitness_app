import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/text_field_fit.dart';
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
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Here there,",
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  )),
              Text("Create an account",
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  )),
              TextFieldFit(
                  hintText: "First Name",
                  prefixIconString: 'assets/icons/profile.png'),
              TextFieldFit(
                  hintText: "Last Name",
                  prefixIconString: 'assets/icons/profile.png'),
              TextFieldFit(
                  hintText: "Email",
                  prefixIconString: 'assets/icons/message.png'),
              TextFieldFit(
                hintText: "Password",
                prefixIconString: 'assets/icons/lock.png',
              )
            ],
          )),
    ));
  }
}
