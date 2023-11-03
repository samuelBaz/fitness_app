import 'package:fitness_app/app_routes.dart';
import 'package:flutter/material.dart';

class ButtonFit extends StatefulWidget {
  final String text;
  final bool primary;
  final VoidCallback onPressed;

  const ButtonFit(
      {super.key,
      required this.text,
      this.primary = false,
      required this.onPressed});

  @override
  State<ButtonFit> createState() => _ButtonFitState();
}

class _ButtonFitState extends State<ButtonFit> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(99),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
            gradient: LinearGradient(
              begin: Alignment(-1.00, 0.08),
              end: Alignment(1, -0.08),
              colors: widget.primary
                  ? [Color(0xFF92A3FD), Color(0xFF9DCEFF)]
                  : [Colors.white, Colors.white],
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  color: widget.primary ? Colors.white : Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w900),
            ),
          )),
    );
  }
}
