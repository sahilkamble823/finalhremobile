import 'package:flutter/material.dart';
import 'package:hrms70dtech/view/screens/home/homeScreen.dart';
import 'package:hrms70dtech/view/screens/notification/notification.dart';
import 'package:hrms70dtech/view/screens/profile/profile.dart';
import 'package:hrms70dtech/view/screens/punch_in/punch_in_main.dart';

import 'package:iconsax/iconsax.dart';
import 'package:map_camera_flutter/map_camera_flutter.dart';

import '../../utils/colors.dart';

class MainNavigationScreen extends StatefulWidget {
  final CameraDescription camera;

  const MainNavigationScreen({super.key, required this.camera});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int currentPageIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: <Widget>[
        /// Home page
        HomePage(),

        /// Notifications page
        PunchInMainScreen(camera: widget.camera),

        /// Messages page
        NotificationScreen(),

        /// profile page
        ProfileScreen()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color(0xff065A9D).withOpacity(0.4),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Iconsax.home),
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.fingerprint_outlined),
            label: 'Punch In',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('0'),
              child: Icon(Iconsax.notification),
            ),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.user),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
