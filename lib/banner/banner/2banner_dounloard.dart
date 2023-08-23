import 'dart:io';

import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

import '../../utils.dart';

class SecondBannerDownload extends StatefulWidget {
  final makkah_days;
  final madinah_days;
  final makkah_hotal_name;
  final madinah_hotal_name;
  final makkah_hotal_distance;
  final madinah_hotal_distance;
  final sharing_price;
  final quad_price;
  final triple_price;
  final double_price;
  final pack_includ;
  final days;
  final number;
  final image;

  const SecondBannerDownload({
    super.key,
    required this.makkah_days,
    required this.madinah_days,
    required this.makkah_hotal_name,
    required this.madinah_hotal_name,
    required this.makkah_hotal_distance,
    required this.madinah_hotal_distance,
    required this.sharing_price,
    required this.quad_price,
    required this.triple_price,
    required this.double_price,
    required this.pack_includ,
    required this.days,
    required this.number,
    required this.image,
  });

  @override
  State<SecondBannerDownload> createState() => _SecondBannerDownloardState();
}

class _SecondBannerDownloardState extends State<SecondBannerDownload> {
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Screenshot(
              controller: screenshotController,
              child: buildStack(
                size,
              )),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: button('Dowmloard...', () async {
                captureAndSave(screenshotController, context);
              }))
        ],
      ),
    )));
  }

  Widget buildStack(size) => Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.teal, BlendMode.color),
            child: Image.asset(
              'assets/images/5bannerbac.jpg',
              // height: 550,
              // width: double.infinity,
              // fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(File(widget.image)), // U
                        ),
                        border: Border.all(
                          color: Colors.white,
                          //<-- SEE HERE
                          width: 2,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.teal,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Center(
                          child: Text(
                            'UMRAH',
                            style: TextStyle(
                                color: Color.fromARGB(255, 236, 196, 62),
                                fontSize: 40,
                                fontFamily: 'Maragsâ',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MAKKAH : ${widget.makkah_days}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              widget.makkah_hotal_name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                            Text(
                              widget.makkah_hotal_distance,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MADINAH : ${widget.madinah_days}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              widget.madinah_hotal_name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                            Text(
                              widget.madinah_hotal_distance,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Divider(
                          thickness: 3,
                        ),
                        Divider(
                          indent: 100,
                          endIndent: 100,
                          color: Colors.black,
                          thickness: 3,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sharing',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              widget.sharing_price,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Quad',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              widget.quad_price,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Triple',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              widget.triple_price,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Double',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              widget.double_price,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PACKAGE INCLUSIONS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                            Text(
                              widget.pack_includ,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontFamily: 'Roboto',
                                  fontSize: 9),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.days,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 196, 62),
                                  fontSize: 70,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Maragsâ',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '/ Days',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        // Container(
                        //   height: 70,
                        //   width: 70,
                        //   decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color: Colors.black,
                        //       border:
                        //           Border.all(width: 3, color: Colors.white)),
                        // )
                        // Text(
                        //   'flydubai',
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.w900,
                        //       fontSize: 26),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.white,
                child: Center(
                    child: Text(
                  widget.number,
                  style: TextStyle(fontSize: 18),
                )),
              ),
            ],
          ),
        ],
      );
}
