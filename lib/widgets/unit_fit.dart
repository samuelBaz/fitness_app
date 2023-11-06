import 'package:flutter/material.dart';

class UnitFit extends StatefulWidget {
  final String unit;
  const UnitFit({super.key, required this.unit});

  @override
  State<UnitFit> createState() => _UnitFitState();
}

class _UnitFitState extends State<UnitFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(-1.00, 0.08),
          end: Alignment(1, -0.08),
          colors: [Color(0xFFC58BF2), Color(0xFFEEA4CE)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Center(
          child: Text(
        widget.unit,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}
