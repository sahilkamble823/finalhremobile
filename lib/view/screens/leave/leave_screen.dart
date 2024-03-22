import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hrms70dtech/view/screens/leave/add_leave.dart';
import 'package:hrms70dtech/view/screens/leave/leave_list.dart';
import 'package:hrms70dtech/view/ui_components/timepicker.dart';

import '../../utils/colors.dart';
import 'leave_status_list.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({super.key});
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Leave'),
    Tab(text: 'Status'),
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: white),
          backgroundColor: Constblue,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: screenWidth * 0.055,
          ),
          title: Text(
            'Leave',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
            indicatorColor: white,
            indicatorSize: TabBarIndicatorSize.tab,
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            labelStyle: TextStyle(fontSize: screenWidth * 0.04),
            indicatorWeight: 2.5,
            labelColor: Colors.white,
            unselectedLabelColor: white.withOpacity(0.7),
            tabs: myTabs,
          ),
        ),
        body: const TabBarView(children: [
          LeaveList(),
          LeaveStatusList(),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Constblue,
          foregroundColor: Colors.white,
          shape: CircleBorder(),
          child: Icon(Icons.add),
          onPressed: () {
            print('Add Leave Click');
            Get.to(() => MyHomePage(
                  title: "Page",
                ));
          },
        ),
      ),
    );
  }
}
