// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/colors.dart';

class PaySlip extends StatelessWidget {
  const PaySlip({super.key});

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
          'Payslip',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenWidth * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "From date",
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "To date",
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenWidth * 0.02,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: screenWidth * 0.12,
                    child: TextField(
                      cursorColor: Color(0xff065A9D),
                      decoration: InputDecoration(
                        hintText: '',
                        hintStyle: TextStyle(
                            fontSize: screenWidth * 0.035,
                            color: grey600.withOpacity(0.6)),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff065A9D))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                Expanded(
                  child: SizedBox(
                     height: screenWidth * 0.12,
                    child: TextField(
                      cursorColor: Color(0xff065A9D),
                      decoration: InputDecoration(
                          hintText: '',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff065A9D))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff065A9D)))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenWidth * 0.05,
            ),
            Text(
              "Payslip List",
              style: TextStyle(fontSize: screenWidth * 0.04),
            ),
          ],
        ),
      ),
    );
  }
}
