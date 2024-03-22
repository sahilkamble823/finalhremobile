
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ProfileList extends StatelessWidget {
  final String labletext;
  final IconData icon;
   final VoidCallback? onpress;
  
  const ProfileList({required this.labletext, required this.icon, super.key,  this.onpress});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: screenWidth * 0.01,horizontal: screenWidth *0.02),
      child: Container(
        width: double.infinity,
        height: screenWidth * 0.12,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                GestureDetector(onTap: onpress,
                  child: Container(
                    child: Text(
                      labletext,
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: darkgrey800),
                    ),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
