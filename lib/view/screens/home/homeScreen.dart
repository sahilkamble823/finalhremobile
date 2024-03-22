import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms70dtech/view/screens/attendance/attendance_screen.dart';
import 'package:hrms70dtech/view/screens/documents/documents_screen.dart';
import 'package:hrms70dtech/view/screens/expenses/expenses.dart';
import 'package:hrms70dtech/view/screens/holiday/holiday_screen.dart';
import 'package:hrms70dtech/view/screens/leave/leave_screen.dart';
import 'package:hrms70dtech/view/screens/payslip/payslip_screen.dart';
import 'package:hrms70dtech/view/ui_components/explore_card.dart';
import 'package:hrms70dtech/view/utils/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unicons/unicons.dart';

import '../../ui_components/wallpost_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List explore_card = [
    ExploreCard(
      labeltext: "Leave",
      icon: Iconsax.calendar,
      onpress: () {
        HapticFeedback.mediumImpact();
        Get.to(() => const LeaveScreen());
      },
    ),
    ExploreCard(
      labeltext: "Attendance",
      icon: Icons.person_outline_outlined,
      onpress: () {
        HapticFeedback.mediumImpact();
        Get.to(() => const AttendanceScreen());
      },
    ),
    ExploreCard(
      labeltext: "Payslip",
      icon: Iconsax.receipt,
      onpress: () {
        HapticFeedback.mediumImpact();
        Get.to(() => const PaySlip());
      },
    ),
    ExploreCard(
      labeltext: "Expenses",
      icon: UniconsLine.rupee_sign,
      onpress: () {
        HapticFeedback.mediumImpact();
        Get.to(() => const ExpenseScreen());
      },
    ),
    ExploreCard(
      labeltext: "Holiday",
      icon: Icons.calendar_today_outlined,
      onpress: () {
        HapticFeedback.mediumImpact();
        Get.to(() => const HolidayScreen());
      },
    ),
    ExploreCard(
      labeltext: "Documents",
      icon: Iconsax.card,
      onpress: () {
        HapticFeedback.mediumImpact();
        Get.to(() => const DocumentScreen());
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // drawer: Drawer(),
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: white),
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: white),
        leading: Icon(
          Icons.menu,
        ),
        backgroundColor: Constblue,
        actions: [
          Icon(
            Iconsax.notification,
            color: white,
          ),
          SizedBox(
            width: screenWidth * 0.02,
          ),
          Icon(
            Iconsax.login,
            color: white,
          ),
          SizedBox(
            width: screenWidth * 0.02,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenWidth * 0.3,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                color: Constblue,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenWidth * 0.02,
                  ),
                  // Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       CircleAvatar(
                  //         backgroundColor: Color(0xff065A9D),
                  //         radius: 20,
                  //         child: Text(
                  //           "Logo",
                  //           style: GoogleFonts.poppins(
                  //             fontSize: 14,
                  //           ),
                  //         ),
                  //       ),
                  //       Text(
                  //         "App Name",
                  //         style: GoogleFonts.poppins(
                  //             fontSize: screenWidth * 0.042,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.w500),
                  //       ),
                  //       const Icon(
                  //         Iconsax.login,
                  //         color: Colors.white,
                  //         size: 30,
                  //       )
                  //     ],
                  //   ),
                  // ),

                  // SizedBox(
                  //   height: screenWidth * 0.06,
                  // ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.033),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "C1001",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth * 0.036,
                                color: Colors.white.withOpacity(1.0),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Varsha Nalawade",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth * 0.055,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 166, 197, 222),
                          radius: 30,
                          child: const Icon(
                            Iconsax.user,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenWidth * 0.03,
                  ),
                  Text(
                    "Wallpost",
                    style: GoogleFonts.poppins(
                        fontSize: screenWidth * 0.046, color: Colors.black),
                  ),
                  SizedBox(
                    height: screenWidth * 0.03,
                  ),
                  const WallPostCard(),
                  SizedBox(
                    height: screenWidth * 0.03,
                  ),
                  Text(
                    "Explore",
                    style: GoogleFonts.poppins(
                        fontSize: screenWidth * 0.046, color: Colors.black),
                  ),
                  SizedBox(
                    height: screenWidth,
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      crossAxisSpacing: screenWidth * 0.03,
                      mainAxisSpacing: screenWidth * 0.02,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: screenWidth * 0.03),
                      children: explore_card.map((card) {
                        return ExploreCard(
                          labeltext: card.labeltext,
                          icon: card.icon,
                          onpress: card.onpress,
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
