import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms70dtech/view/ui_components/timepicker.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '../../utils/colors.dart';

class AddLeave extends StatefulWidget {
  const AddLeave({super.key});

  @override
  State<AddLeave> createState() => _AddLeaveState();
}

class _AddLeaveState extends State<AddLeave> {
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController _starttimeController = TextEditingController();
  TextEditingController _endtimeController = TextEditingController();

  double? _height;
  double? _width;

  String? _setTime, _setDate;

  String? _hour, _minute, _time;

  String? dateTime;
  bool isChecked = false;
  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != controller.text) {
      setState(() {
        controller.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);
  Future<Null> _selectTime(
      BuildContext context, TextEditingController controller) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour! + ' : ' + _minute!;
        controller.text = _time!;
        controller.text = formatTime(selectedTime);
      });
  }

  String formatTime(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    final dateTime = DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    return DateFormat.jm().format(dateTime);
  }

  List<String> list = <String>[
    'Paid Leave (balance: 0 days)',
    'Unpaid Leave ',
    'Sick Leave(balance: 0 days)',
    'Casual Leave (balance: 0 days)',
  ];

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Request Leave",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Constblue,
        centerTitle: true,
        iconTheme: IconThemeData(color: white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Text(
                " Leave type",
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              SizedBox(
                height: screenWidth * 0.1,
                child: DropdownMenu<String>(
                  initialSelection: list.first,
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries:
                      list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.06,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "From date",
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ),
                  !isChecked
                      ? Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              "To date",
                              style: TextStyle(fontSize: screenWidth * 0.04),
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
              SizedBox(
                height: screenWidth * 0.01,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 20.w,
                      child: TextField(
                        controller: fromDateController,
                        onTap: () {
                          _selectDate(context, fromDateController);
                        },
                        cursorColor: Constblue,
                        decoration: InputDecoration(
                          hintText: 'Select From date',
                          hintStyle: TextStyle(fontSize: 12.sp),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Constblue),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  !isChecked
                      ? Expanded(
                          child: TextField(
                            controller: toDateController,
                            onTap: () {
                              _selectDate(context, toDateController);
                            },
                            cursorColor: Constblue,
                            decoration: InputDecoration(
                              hintText: 'Select To Date',
                              hintStyle: TextStyle(fontSize: 12.sp),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Constblue),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Constblue),
                              ),
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  Text(
                    'Request leave for half day',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              isChecked
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Short Leave',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _starttimeController,
                                onTap: () {
                                  _selectTime(context, _starttimeController);
                                },
                                cursorColor: Constblue,
                                decoration: InputDecoration(
                                  hintText: 'Select from time',
                                  hintStyle: TextStyle(fontSize: 12.sp),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Constblue),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.05,
                            ),
                            Expanded(
                              child: TextField(
                                controller: _endtimeController,
                                onTap: () {
                                  _selectTime(context, _endtimeController);
                                },
                                cursorColor: Constblue,
                                decoration: InputDecoration(
                                  hintText: 'Select to time',
                                  hintStyle: TextStyle(fontSize: 12.sp),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Constblue),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenWidth * 0.05,
                        ),
                      ],
                    )
                  : Container(),
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
                    child: SizedBox(
                      height: screenWidth * 0.12,
                      child: TextField(
                        cursorColor: Color(0xff065A9D),
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontSize: screenWidth * 0.035,
                                color: grey600.withOpacity(0.6)),
                            hintText: 'Upload Documents',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff065A9D)))),
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
                    child: Icon(
                      Icons.attach_file,
                      size: screenWidth * 0.08,
                      color: darkgrey800,
                    ),
                    // child: Text(
                    //   'Upload',
                    //   style: TextStyle(
                    //       color: white, fontSize: screenWidth * 0.04),
                    // ),
                  )
                ],
              ),
              Text(
                " Reason of leave ",
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              TextField(
                maxLines: 2,
                cursorColor: Constblue,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: grey600.withOpacity(0.6)),
                  hintText: 'Enter reason of leave',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Constblue),
                  ),
                ),
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
              color: Constblue,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Text(
              "Apply Leave",
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
