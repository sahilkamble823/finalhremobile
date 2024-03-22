import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
                centerTitle: true,
        iconTheme: IconThemeData(color: white),
        backgroundColor: Color(0xff065A9D),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: screenWidth * 0.055,
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
     
    );
  }
}
