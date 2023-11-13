import 'package:flutter/cupertino.dart';

class ProgressPhotoScreen extends StatefulWidget {
  const ProgressPhotoScreen({super.key});

  @override
  State<ProgressPhotoScreen> createState() => _ProgressPhotoScreenState();
}

class _ProgressPhotoScreenState extends State<ProgressPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Text("Progress Photo"),
    ));
  }
}
