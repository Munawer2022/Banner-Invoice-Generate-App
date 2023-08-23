import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SevenBannerDownload extends StatelessWidget {
  const SevenBannerDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/7bannerbac.jpg',

              // height: 550,

              // width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 370,
              left: 40,
              child: Column(
                children: [
                  Text(
                    '7 NIGHT\nPACKAGE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff8B3913),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oswald'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '4 NIGHT MADINAH\n3 NIGHT MECCA',

                    // 'Hotal & Transport\nBy Bus & Flight\nVisa & Insurance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8B3913),
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
            ),
            // Positioned(
            //   top: 370,
            //   left: 40,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(vertical: 20),
            //     child: IntrinsicHeight(
            //       child: VerticalDivider(
            //         color: Color(0xff8B3913),
            //         thickness: 2,
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              top: 370,
              left: 250,
              child: Column(
                children: [
                  Text(
                    '7 NIGHT\nPACKAGE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff8B3913),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oswald'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '4 NIGHT MADINAH\n3 NIGHT MECCA',

                    // 'Hotal & Transport\nBy Bus & Flight\nVisa & Insurance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8B3913),
                        fontFamily: 'Roboto'),
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
