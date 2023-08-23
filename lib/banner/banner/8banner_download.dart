import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EightBannerDownload extends StatelessWidget {
  const EightBannerDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/8bannerbac.jpg',
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 70,
              top: 60,
              child: Text(
                '2023',
                style: TextStyle(
                    color: Color(0xff333667),
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto'),
              ),
            ),
            Positioned(
              left: 50,
              top: 220,
              child: Text(
                '\$1200',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto'),
              ),
            ),
            Positioned(
              left: 20,
              top: 265,
              child: Text(
                'Lorem Ipsum is simply\ndummy text of the printing\nand typesetting industry.\nLorem Ipsum has been the',
                // textWidthBasis: TextWidthBasis.longestLine,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87, fontSize: 9, fontFamily: 'Roboto'),
              ),
            ),
            Positioned(
              left: 140,
              top: 465,
              child: Text(
                '018-6031616',
                // textWidthBasis: TextWidthBasis.longestLine,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white, fontSize: 16, fontFamily: 'Roboto'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
