import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms70dtech/view/screens/expenses/add_expense.dart';
import 'package:hrms70dtech/view/screens/expenses/expense_status_list.dart';

import '../../utils/colors.dart';
import 'expense_list.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Expenses'),
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
          backgroundColor: Color(0xff065A9D),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: screenWidth * 0.055,
          ),
          title: Text(
            'Expense',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
            bottom:  TabBar(
            indicatorColor: grey600,
            indicatorSize: TabBarIndicatorSize.tab,
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            labelStyle: TextStyle(
              fontSize: screenWidth * 0.04
            ),
            indicatorWeight: 2.5,
            labelColor: Colors.white,
            unselectedLabelColor: white.withOpacity(0.7),
            tabs: myTabs,
          ),
        ),
        body: const TabBarView(
          children: [
            ExpenseList(),
            ExpnseStatusList(),
          ]
          ),
        
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff065A9D),
          foregroundColor: Colors.white,
          shape: CircleBorder(),
          child: Icon(Icons.add),
          onPressed: () {
            print('Add Expense Click');
            Get.to(()=> const AddExpense());
          },
        ),
      ),
       );
  }
}
