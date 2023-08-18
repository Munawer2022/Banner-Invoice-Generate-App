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

              height: 550,

              // width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 120),
              child: Center(
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
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
                      VerticalDivider(
                        color: Color(0xff8B3913),
                        thickness: 2,
                      ),
                      Column(
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
