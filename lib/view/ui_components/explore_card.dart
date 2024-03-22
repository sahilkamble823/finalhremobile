import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class ExploreCard extends StatelessWidget {
  final String labeltext;
  final IconData icon;
  final VoidCallback onpress;

  const ExploreCard(
      {required this.labeltext,
      required this.icon,
      super.key,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.015, vertical: screenWidth * 0.02),
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          // width: screenWidth * 0.30,
          // height: screenWidth * 0.30,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              boxShadow: [
                BoxShadow(
                  color: grey600,
                  blurRadius: 0.9,
                  spreadRadius: 0.2,
                ),
              ]),
          child: Column(
            children: [
              SizedBox(
                height: screenWidth * 0.05,
              ),
              Container(
                padding: EdgeInsets.all(screenWidth * 0.023),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Color(0xff065A9D)
                  // color: cyan.withOpacity(0.7)
                  color: Constblue,
                ),
                child: Icon(icon, size: screenWidth * 0.05, color: white),
              ),
              SizedBox(
                height: screenWidth * 0.03,
              ),
              Text(
                labeltext,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.w400,
                  color: darkgrey800,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
