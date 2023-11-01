import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';

class TextFieldFit extends StatefulWidget {
  final String hintText;
  final String prefixIconString;

  const TextFieldFit(
      {super.key, required this.hintText, required this.prefixIconString});

  @override
  State<TextFieldFit> createState() => _TextFieldFitState();
}

class _TextFieldFitState extends State<TextFieldFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side:
                  const BorderSide(width: 1, color: Constants.textInputColorBg),
              borderRadius: BorderRadius.circular(14))),
      child: TextField(
        decoration: InputDecoration(
            hintText: this.widget.hintText,
            fillColor: Constants.textInputColorBg,
            filled: true,
            hintStyle: const TextStyle(
              color: Color(0xFFACA3A5),
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Image.asset(widget.prefixIconString),
            suffixIcon: Image.asset('assets/icons/hide_password.png'),
            border: InputBorder.none),
      ),
    );
  }
}
