import 'package:flutter/material.dart';

import '../utils/colors.dart';


class LeaveListCard extends StatelessWidget {
  final VoidCallback? onpress;
  final String text;
  const LeaveListCard({super.key, this.onpress, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: screenWidth * 0.170,
        height: screenWidth * 0.085,
        padding: EdgeInsets.only(
            left: screenWidth * 0.02, right: screenWidth * 0.02),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: black, width: 0.5)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: screenWidth * 0.043, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      
    );

  }
}
