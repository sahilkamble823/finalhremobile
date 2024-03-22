import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms70dtech/view/screens/profile/change_password.dart';
import 'package:hrms70dtech/view/screens/profile/raised_ticket.dart';
import 'package:hrms70dtech/view/screens/profile/setting.dart';
import 'package:hrms70dtech/view/ui_components/profile_card.dart';
import 'package:iconsax/iconsax.dart';
import 'package:unicons/unicons.dart';

import '../../utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List profile_card = [
      ProfileList(
          labletext: "Profile details",
          icon: Icons.person_2_outlined,
          onpress: () {
            Get.off(() => ChangePassword());
          }),
      ProfileList(
        labletext: "Raise ticket",
        icon: Iconsax.info_circle,
        onpress: () {
          Get.to(() => RaisedTicketPage());
        },
      ),
      ProfileList(
        labletext: "Change password",
        icon: Iconsax.key,
        onpress: () {
          Get.to(() => ChangePassword());
        },
      ),
      ProfileList(
        labletext: "Settings",
        icon: Icons.settings_outlined,
        onpress: () {
          Get.to(() => SettingsPage());
        },
      ),
      ProfileList(
        labletext: "Logout",
        icon: Iconsax.logout,
        onpress: () {},
      ),
    ];
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
          'Account',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenWidth * 0.07,
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: screenWidth * 0.09,
                child: Icon(
                  Iconsax.user,
                  size: screenWidth * 0.09,
                ),
              ),
              Positioned(
                  left: 0,
                  top: 0,
                  right: -50,
                  bottom: -40,
                  child: Icon(Icons.add_a_photo)),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.043),
            child: Column(
              children: [
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                Container(
                  alignment: Alignment.center,
                  // height: screenWidth * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      //color: Colors.red
                      ),
                  child: Column(
                    children: [
                      Text(
                        "Varsha Nalawade",
                        style: TextStyle(
                            color: darkgrey800,
                            fontSize: screenWidth * 0.05),
                      ),
                      Text(
                        "C1001",
                        style: TextStyle(
                            color: darkgrey800,
                            fontSize: screenWidth * 0.045),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.02,
                ),
                Divider(
                  color: grey600,
                  thickness: 0.5,
                ),
                SizedBox(
                  height: screenWidth * 0.08,
                ),
                Container(
                  // color: Colors.red,
                  width: double.infinity,
                  height: screenWidth * 0.8,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: profile_card.length,
                    itemBuilder: (context, index) {
                      return ProfileList(
                          labletext: profile_card[index].labletext,
                          icon: profile_card[index].icon);
                    },
                  ),
                ),
                Text("App Name"),
                Text("version 1.0"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
