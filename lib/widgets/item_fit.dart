import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/circle_item_fit.dart';
import 'package:fitness_app/widgets/circles_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemFit extends StatefulWidget {
  final bool mainColor;
  final Widget? startIcon;
  final String title;
  final String description;

  const ItemFit(
      {super.key,
      this.mainColor = true,
      this.startIcon = null,
      required this.title,
      required this.description});

  @override
  State<ItemFit> createState() => _ItemFitState();
}

class _ItemFitState extends State<ItemFit> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleItemFit(
                  size: 40,
                  mainColor: widget.mainColor,
                ),
                widget.startIcon == null ? const SizedBox() : widget.startIcon!
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Color(0xFF1D1517),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(
                      color: Color(0xFF7B6F72),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black.withOpacity(0.2),
            )
          ]),
        ),
        Container(
          height: 1,
          color: Constants.borderColor,
          margin: EdgeInsets.only(bottom: 8, top: 8),
        )
      ],
    );
  }
}
