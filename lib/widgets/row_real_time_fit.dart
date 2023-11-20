import 'package:fitness_app/utils/constants.dart';
import 'package:fitness_app/widgets/circle_item_fit.dart';
import 'package:flutter/cupertino.dart';

class RowRealTimeFit extends StatefulWidget {
  const RowRealTimeFit({super.key});

  @override
  State<RowRealTimeFit> createState() => _RowRealTimeFitState();
}

class _RowRealTimeFitState extends State<RowRealTimeFit> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            CircleItemFit(
              size: 6,
              mainColor: false,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                '6am - 8am',
                style: TextStyle(
                  color: Color(0xFFACA3A5),
                  fontSize: 8,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 6,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    width: 1,
                    height: 5,
                    color: Constants.colorActive,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    width: 1,
                    height: 3,
                    color: Constants.colorActive,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 1,
                    height: 5,
                    color: Constants.colorActive,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
              child: Text(
                '600ml',
                style: TextStyle(
                    color: Color(0xFFC58BF2),
                    fontSize: 8,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ],
    );
  }
}
