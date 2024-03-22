// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:map_camera_flutter/map_camera_flutter.dart';

import '../../utils/colors.dart';

class PunchInMainScreen extends StatelessWidget {
  final CameraDescription camera;
  const PunchInMainScreen({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constblue,
        automaticallyImplyLeading: false,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: screenWidth * 0.055,
        ),
        title: Text(
          'Punch In',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenWidth * 0.03,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.white,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                boxShadow: [
                  BoxShadow(
                    color: grey600,
                    blurRadius: 0.9,
                    spreadRadius: 0.2,
                  ),
                ]),
            child: Row(
              children: [
                Text(
                  "Today's Date",
                  style: TextStyle(
                      fontSize: screenWidth * 0.043, color: Colors.black),
                ),
                const Spacer(),
                Text(
                  "Present",
                  style: TextStyle(
                      fontSize: screenWidth * 0.043, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: screenWidth * 1.13,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: MapCameraLocation(
              camera: camera,
              onImageCaptured: (ImageAndLocationData data) {
                print('Captured image path: ${data.imagePath}');
                print('Latitude: ${data.latitude}');
                print('Longitude: ${data.longitude}');
                print('Location name: ${data.locationName}');
                print('Sublocation: ${data.subLocation}');
              },
            ),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          Container(
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
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  "Punch In",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.045,
                      color: white,
                      wordSpacing: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void yourCallbackFunction(ImageAndLocationData data) {}
}
