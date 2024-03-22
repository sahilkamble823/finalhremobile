import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import '../../utils/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
          'Notifications',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenWidth * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.043),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                        vertical: screenWidth * 0.02),
                    width: double.infinity,
                    // height: screenWidth * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // color: Colors.grey.withOpacity(0.2),
                        boxShadow: [
                          BoxShadow(
                            color: grey600.withOpacity(0.3),
                            blurRadius: 0.4,
                            spreadRadius: 0.4,
                          )
                        ],
                        border: Border.all(
                            color: grey600.withOpacity(0.3)),
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.03)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Constblue,
                              radius: screenWidth * 0.06,
                              child: Icon(Iconsax.message,color: Colors.white,),
                            ),
                            SizedBox(
                              width: screenWidth * 0.02,
                            ),
                            Text(
                              "Message Title",
                              style: TextStyle(fontSize: screenWidth * 0.045),
                            ),
                            const Spacer(),
                            Text(
                              "now",
                              style: TextStyle(color: grey600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.139,
                            ),
                            Text(
                              "This is the subtitle of the message.",
                              style: TextStyle(fontSize: screenWidth * 0.033),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.05,
                  ),
                  ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenWidth * 0.02),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.03,
                                vertical: screenWidth * 0.02),
                            width: double.infinity,
                            // height: screenWidth * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // color: Colors.grey.withOpacity(0.2),
                                boxShadow: [
                                  BoxShadow(
                                    color: grey600.withOpacity(0.3),
                                    blurRadius: 0.4,
                                    spreadRadius: 0.4,
                                  )
                                ],
                                border: Border.all(
                                    color: grey600.withOpacity(0.3)),
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.03)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor:Constblue,
                                      radius: screenWidth * 0.06,
                                      child: Icon(Iconsax.message,color: Colors.white,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.02,
                                    ),
                                    Text(
                                      "Message Title",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.045),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "now",
                                      style: TextStyle(color: grey600),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.139,
                                    ),
                                    Text(
                                      "This is the subtitle of the message.",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.033),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
