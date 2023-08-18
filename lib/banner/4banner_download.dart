import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThirdBannerDownload extends StatelessWidget {
  const ThirdBannerDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/4bannerbac.jpg',

              // height: 600,

              // width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '2023',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Maragsâ',
                          color: Color(0xff9B7B15),
                          fontSize: 40),
                    ),
                    Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color(0xff9B7B15),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(
                          child: Text(
                        'PER PERSON 25,0000',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Traveling Date 1 Sep to 21 Sep',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Maragsâ',
                          color: Color(0xff9B7B15),
                          fontSize: 20),
                    ),
                    Text(
                      'Package Includes',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          // fontFamily: 'Maragsâ',
                          color: Color(0xff9B7B15),
                          fontSize: 15),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person_pin,
                          size: 35,
                          color: Color(0xff9B7B15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Umrah Visa',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              // fontStyle: FontStyle.italic,
                              // fontFamily: 'Maragsâ',
                              color: Color(0xff9B7B15),
                              fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.wallet_travel,
                          size: 35,
                          color: Color(0xff9B7B15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'EITHAD AIRLINE',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              // fontStyle: FontStyle.italic,
                              // fontFamily: 'Maragsâ',
                              color: Color(0xff9B7B15),
                              fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.houseboat_outlined,
                          size: 35,
                          color: Color(0xff9B7B15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '200 METER BOTH HOTAL',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              // fontStyle: FontStyle.italic,
                              // fontFamily: 'Maragsâ',
                              color: Color(0xff9B7B15),
                              fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'CONTACT US : MUHAMEED KASHIF DONI ADDREES:IMPERIAL\nTRAVEL&TOURS OFFICE:29-C,SHOP # 4.PHASE-V D.H.A,\nKARACHI PHONE NO: 0321-828400 - 03356-589744',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff9B7B15),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        'BOOK NOW! Imperialtravies@gmail.com',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
