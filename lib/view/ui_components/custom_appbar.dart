import 'package:flutter/material.dart';

import '../utils/colors.dart';


class CustomAppBar extends StatelessWidget {
  final String label;
   CustomAppBar({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor:cyan,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: screenWidth * 0.055,
      ),
      title: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
