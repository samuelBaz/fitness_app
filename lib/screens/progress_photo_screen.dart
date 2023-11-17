import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressPhotoScreen extends StatefulWidget {
  const ProgressPhotoScreen({super.key});

  @override
  State<ProgressPhotoScreen> createState() => _ProgressPhotoScreenState();
}

class _ProgressPhotoScreenState extends State<ProgressPhotoScreen> {
  final double scale = 1.6;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              margin: const EdgeInsets.only(bottom: 4, left: 24, right: 24),
              height: scale == 1.0 ? 50 : 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      blurRadius: 6,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 0,
                      child: Text(
                        "Periodo",
                        textScaleFactor: scale,
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF3A3D5F)),
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Consumo",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textScaleFactor: scale,
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF3A3D5F)),
                          ),
                          Text(
                            "kWh",
                            textScaleFactor: scale,
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF3A3D5F)),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Importe",
                            maxLines: 1,
                            textScaleFactor: 1.0,
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF3A3D5F)),
                          ),
                          Text(
                            "Bs.",
                            textScaleFactor: scale,
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF3A3D5F)),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Fecha",
                            textScaleFactor: scale,
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF3A3D5F)),
                          ),
                          Text(
                            "Pago",
                            textScaleFactor: scale,
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF3A3D5F)),
                          ),
                        ],
                      )),
                ],
              )),
          scale > 1.5 ? Text("List") : Text("Table")
        ],
      ),
    ));
  }
}
