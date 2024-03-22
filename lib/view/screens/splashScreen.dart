import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms70dtech/view/screens/onboarding/loginScreen.dart';

import '../utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(()=>LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.04, top: screenWidth * 0.4),
              child: Image.asset(
                AppAssets.logo,
                // width: screenWidth * 2,
              ),
            ),
            Text(
              "Complete HR Solution",
              style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.04,
                  letterSpacing: 2,
                  wordSpacing: 3),
            ),
            SizedBox(
              height: screenWidth * 0.3,
            ),
            // CircularProgressIndicator(
            //   color: Color(0xff065A9D),
            // ),
          ],
        ),
      ),
    );
  }
}
