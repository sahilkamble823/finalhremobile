// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:iconsax/iconsax.dart';

import '../../utils/colors.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Expense",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff065A9D),
        centerTitle: true,
        iconTheme: IconThemeData(color: white),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenWidth * 0.05,
              ),
              Text(
                " Title",
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              SizedBox(
                 height: screenWidth * 0.12,
                child: TextField(
                  cursorColor: Color(0xff065A9D),
                  decoration: InputDecoration(
                    
                      hintText: 'Enter Title',
                      hintStyle: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: grey600.withOpacity(0.6)),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff065A9D)))),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Text(
                " Description",
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              TextField(
                cursorColor: Color(0xff065A9D),
                maxLines: 3,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: grey600.withOpacity(0.6)),
                    hintText: 'Enter Description',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff065A9D)))),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Text(
                " Amount",
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              SizedBox( height: screenWidth * 0.12,
                child: TextField(
                  cursorColor: Color(0xff065A9D),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    
                      hintStyle: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: grey600.withOpacity(0.6)),
                      hintText: 'Enter Amount',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff065A9D)))),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Text(
                " Date",
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              SizedBox(
                 height: screenWidth * 0.12,
                child: TextField(
                  cursorColor: Color(0xff065A9D),
                  decoration: InputDecoration(
                    
                      hintText: 'Enter Date',
                      hintStyle: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: grey600.withOpacity(0.6)),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff065A9D)))),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Text(
                " Document",
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox( height: screenWidth * 0.12,
                      child: TextField(
                        cursorColor: Color(0xff065A9D),
                        decoration: InputDecoration(
                        
                            hintStyle: TextStyle(
                                fontSize: screenWidth * 0.035,
                                color: grey600.withOpacity(0.6)),
                            hintText: 'Upload Documents',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff065A9D)))),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Container(
                    alignment: Alignment.center,
                    // height: screenWidth * 0.11,
                    // width: screenWidth * 0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // gradient: LinearGradient(
                      //   colors: [Color(0xff065A9D).shade300, Color(0xff065A9D).shade600],
                      //   begin: Alignment.topCenter,
                      //   end: Alignment.bottomCenter,
                      // ),
                    ),
                    child: Icon(Icons.attach_file,size: screenWidth * 0.08,color: darkgrey800,),
                    // child: Text(
                    //   'Upload',
                    //   style: TextStyle(
                    //       color: white, fontSize: screenWidth * 0.04),
                    // ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04, vertical: screenWidth * 0.03),
        height: screenWidth * 0.2,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff065A9D),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Text(
              "Add Expense",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth * 0.045,
                  color: white,
                  wordSpacing: 2),
            ),
          ),
        ),
      ),
    );
  }
}
