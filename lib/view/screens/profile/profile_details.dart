import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
                centerTitle: true,
        iconTheme: IconThemeData(color: white),
        backgroundColor:Color(0xff065A9D),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: screenWidth * 0.055,
        ),
        title: Text(
          'Profile Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
     
    );
  }
}
