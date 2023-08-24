import 'dart:io';

import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

import '../../utils.dart';

class FiveBannerDownload extends StatefulWidget {
  final year;
  final price;
  final description;
  final logo;

  final number;

  const FiveBannerDownload({
    super.key,
    required this.year,
    required this.price,
    required this.description,
    required this.logo,
    required this.number,
  });

  @override
  State<FiveBannerDownload> createState() => _FiveBannerDownloardState();
}

class _FiveBannerDownloardState extends State<FiveBannerDownload> {
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
            'assets/images/8bannerbac.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 70,
            top: 60,
            child: Text(
              widget.year,
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
              'PKR ${widget.price}',
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
            child: SizedBox(
              width: 140,
              child: Text(
                widget.description,
                maxLines: 5,
                // textWidthBasis: TextWidthBasis.longestLine,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87, fontSize: 9, fontFamily: 'Roboto'),
              ),
            ),
          ),
          Positioned(
              right: 70,
              top: 380,
              child: Image(
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                image: FileImage(File(widget.logo)), // U
              )),
          Positioned(
            left: 140,
            top: 465,
            child: Text(
              widget.number,
              // textWidthBasis: TextWidthBasis.longestLine,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white, fontSize: 16, fontFamily: 'Roboto'),
            ),
          ),
        ],
      );
}
