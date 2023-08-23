import 'dart:io';

import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

import '../../utils.dart';

class ThirdBannerDownload extends StatefulWidget {
  final year;
  final price;
  final title;
  final p1;
  final p2;
  final p3;
  final contack_us;
  final address;
  final number;

  const ThirdBannerDownload({
    super.key,
    required this.year,
    required this.price,
    required this.title,
    required this.p1,
    required this.p2,
    required this.p3,
    required this.contack_us,
    required this.address,
    required this.number,
  });

  @override
  State<ThirdBannerDownload> createState() => _ThirdBannerDownloardState();
}

class _ThirdBannerDownloardState extends State<ThirdBannerDownload> {
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
          Image.asset(
            'assets/images/4bannerbac.jpg',

            height: 500,

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
                    widget.year,
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
                      'PER PERSON ${widget.price},',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Maragsâ',
                        color: Color(0xff9B7B15),
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_pin,
                        size: 25,
                        color: Color(0xff9B7B15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.p1,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            // fontStyle: FontStyle.italic,
                            // fontFamily: 'Maragsâ',
                            color: Color(0xff9B7B15),
                            fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wallet_travel,
                        size: 25,
                        color: Color(0xff9B7B15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.p2,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            // fontStyle: FontStyle.italic,
                            // fontFamily: 'Maragsâ',
                            color: Color(0xff9B7B15),
                            fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.houseboat_outlined,
                        size: 25,
                        color: Color(0xff9B7B15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.p3,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            // fontStyle: FontStyle.italic,
                            // fontFamily: 'Maragsâ',
                            color: Color(0xff9B7B15),
                            fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'CONTACT US : ${widget.contack_us},\nADDREES:${widget.address},\nPHONE NO: ${widget.number}',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9B7B15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      'BOOK NOW! ${widget.number}',
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
      );
}
