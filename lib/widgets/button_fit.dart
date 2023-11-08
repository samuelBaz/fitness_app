import 'package:fitness_app/app_routes.dart';
import 'package:flutter/material.dart';

class ButtonFit extends StatefulWidget {
  final String text;
  final bool primary;
  final VoidCallback onPressed;
  final String prefixIconString;
  final Widget? suffixIcon;

  const ButtonFit(
      {super.key,
      required this.text,
      this.primary = false,
      required this.onPressed,
      this.prefixIconString = "",
      this.suffixIcon = null});

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
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.prefixIconString == ""
                  ? const SizedBox()
                  : Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Image.asset(widget.prefixIconString),
                    ),
              Container(
                child: Text(
                  widget.text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: widget.primary ? Colors.white : Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
              ),
              widget.suffixIcon == null ? const SizedBox() : widget.suffixIcon!
            ],
          ))),
    );
  }
}
