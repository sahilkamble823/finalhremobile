import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              top: screenWidth * 0.3),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: screenWidth * 0.1,
                    child: Icon(Icons.people_alt),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                Text(
                  "Please fill in the credentials",
                  style: GoogleFonts.poppins(fontSize: 16, color: grey600),
                ),
                SizedBox(
                  height: screenWidth * 0.07,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.user,
                      color: grey600,
                      size: 18,
                    ),
                    hintText: 'Username',
                    hintStyle:
                        TextStyle(color: grey600, fontWeight: FontWeight.w300),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.key,
                      color: grey600,
                      size: 18,
                    ),
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(color: grey600, fontWeight: FontWeight.w300),
                    suffixIcon: Icon(
                      Iconsax.eye,
                      color: grey600,
                      size: 18,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/mainscreen');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: screenWidth * 0.13,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Constblue),
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(color: white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
