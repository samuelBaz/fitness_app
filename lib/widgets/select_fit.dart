import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';

class SelectFit extends StatefulWidget {
  final List<String> options;
  const SelectFit({super.key, required this.options});

  @override
  State<SelectFit> createState() => _SelectFitState();
}

class _SelectFitState extends State<SelectFit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.00, 0.08),
          end: Alignment(1, -0.08),
          colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: DropdownButtonFormField(
        icon: Image.asset(
          'assets/icons/arrow_down.png',
          color: Colors.white,
        ),
        dropdownColor: Constants.primaryColor,
        decoration: const InputDecoration(
            contentPadding:
                EdgeInsets.only(left: 15, right: 10, top: 0, bottom: 15),
            constraints: BoxConstraints(maxHeight: 30),
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none),
        value: widget.options[0],
        onChanged: (value) => {},
        items: widget.options.map((String item) {
          return DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ));
        }).toList(),
      ),
    );
  }
}
