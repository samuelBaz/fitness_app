import 'package:flutter/cupertino.dart';

class CircleItemFit extends StatefulWidget {
  final double size;
  final bool mainColor;
  const CircleItemFit({super.key, required this.size, this.mainColor = true});

  @override
  State<CircleItemFit> createState() => _CicleFitState();
}

class _CicleFitState extends State<CircleItemFit> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1.00, 0.08),
            end: Alignment(1, -0.08),
            colors: widget.mainColor
                ? [Color(0xFF92A3FD), Color(0xFF9DCEFF)]
                : [Color(0xFFC58BF2), Color(0xFFEEA4CE)],
          ),
          shape: OvalBorder(),
        ),
      ),
    );
  }
}
