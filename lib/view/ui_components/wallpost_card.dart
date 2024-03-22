import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class WallPostCard extends StatelessWidget {
  const WallPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
      final List<String> imageUrls = [
    'https://img.freepik.com/free-vector/communication-flat-icon_1262-18771.jpg?w=900&t=st=1707185563~exp=1707186163~hmac=7368df412c2b28a690be91c21179b1a379f5585c7f9ef08465cedb8431a4ac64',
    'https://img.freepik.com/free-vector/flat-time-management-concept-illustration_52683-55532.jpg?w=1060&t=st=1707185630~exp=1707186230~hmac=e6877ac8470c376488f6aafb85f154cae005092ef363d5dd69b8b082c9051633',
    'https://img.freepik.com/free-vector/local-tourism-concept_52683-40899.jpg?w=1060&t=st=1707185683~exp=1707186283~hmac=3f106dc1846a1c20623cf51ca3b326f2caf1162a752e9980864f06917f9037c9',
  ];
    return Container(
    width: double.infinity,
      height: screenWidth * 0.36,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: grey600,
            blurRadius: 2.3,
            spreadRadius: 0.4,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.04)),
      ),
    child:

      CarouselSlider(
        items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
             // margin: EdgeInsets.all(8.0),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                // height: 200,
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
       // height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        // aspectRatio: 16/9,
      ),)
   
    );
  }
}
