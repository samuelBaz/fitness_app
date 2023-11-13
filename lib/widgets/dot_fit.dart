import 'package:flutter/cupertino.dart';

class DotFit extends StatefulWidget {
  const DotFit({super.key});

  @override
  State<DotFit> createState() => _DotFitState();
}

class _DotFitState extends State<DotFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      margin: const EdgeInsets.only(top: 5),
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.00, 0.08),
          end: Alignment(1, -0.08),
          colors: [Color(0xFFC58BF2), Color(0xFFEEA4CE)],
        ),
        shape: OvalBorder(),
      ),
    );
  }
}
