import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SecondBannerDownload extends StatelessWidget {
  const SecondBannerDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.lightGreen.shade700, BlendMode.color),
                  child: Image.asset(
                    'assets/images/2bannerbac.jpg',

                    height: 600,

                    // width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 140,
                  child: Transform.rotate(
                    alignment: Alignment.bottomCenter,
                    angle: 1.3,
                    child: Container(
                      height: 400.0,
                      width: 300.0,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.lightGreen.shade700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'UMRAH PACKAGE (15 DAYS)',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )),
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/1banneriamge.jpg',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 140,
                      left: 30,
                      child: Image.asset(
                        'assets/images/1bannerbac.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
