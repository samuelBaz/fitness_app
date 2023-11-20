import 'package:fitness_app/widgets/circle_item_fit.dart';
import 'package:flutter/cupertino.dart';

class ItemWorkOutFit extends StatefulWidget {
  const ItemWorkOutFit({super.key});

  @override
  State<ItemWorkOutFit> createState() => _ItemWorkOutFitState();
}

class _ItemWorkOutFitState extends State<ItemWorkOutFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        CircleItemFit(size: 50),
        Expanded(
            child: Column(
          children: [Text("Title"), Text("Description")],
        )),
        CircleItemFit(
          size: 20,
        )
      ]),
    );
  }
}
