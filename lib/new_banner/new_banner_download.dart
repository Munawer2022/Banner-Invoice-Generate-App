import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import '../../utils.dart';

class NewBannerDownload extends StatefulWidget {
  final makkahimage;
  final madinahimage;
  final month;
  final companyname;
  final packageincludes;
  final cith1;
  final hotalname1;
  final city2;
  final hotalname2;
  final airlinename;
  final withtransportorwith;
  final bycarorbus;
  final insurance;
  final packagetype;
  final year;
  final days;
  final roomtype;
  final perperson;
  final amount;
  final date;
  final contact;
  final email;

  const NewBannerDownload({
    super.key,
    required this.makkahimage,
    required this.madinahimage,
    required this.month,
    required this.companyname,
    required this.packageincludes,
    required this.cith1,
    required this.hotalname1,
    required this.city2,
    required this.hotalname2,
    required this.airlinename,
    required this.withtransportorwith,
    required this.bycarorbus,
    required this.insurance,
    required this.packagetype,
    required this.year,
    required this.days,
    required this.roomtype,
    required this.perperson,
    required this.amount,
    required this.date,
    required this.contact,
    required this.email,
  });

  @override
  State<NewBannerDownload> createState() => _FiveBannerDownloardState();
}

class _FiveBannerDownloardState extends State<NewBannerDownload> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          // buildStack(),
          Screenshot(controller: screenshotController, child: buildStack()),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: button('Download', () async {
                captureAndSave(screenshotController, context);
              }))
        ],
      ),
    )));
  }

  Widget buildStack() => Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(widget.makkahimage)),
                        //  AssetImage(
                        //   'assets/images/3banner_iamge.jpg',
                        // ),
                      )),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/images/logo.jpg',
                          scale: 2,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(widget.madinahimage)),
                        // AssetImage(
                        //   'assets/images/madina.jpg',
                        // ),
                      )),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          widget.month,
                          style: TextStyle(
                            color: Color(0xff334926),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 300,
                      color: Colors.yellow,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              widget.companyname,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                widget.packageincludes,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Handlee',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                widget.cith1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff334926),
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                widget.hotalname1,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff334926),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                widget.city2,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff334926),
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                widget.hotalname2,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff334926),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  'TICKET:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff334926),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  widget.airlinename,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff334926),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'VISA:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff334926),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  widget.withtransportorwith,
                                  style: TextStyle(
                                    fontSize: 7,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff334926),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'TRANSPORT:',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff334926),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  widget.bycarorbus,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff334926),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'INSURANCE',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff334926),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  widget.insurance ?? '',
                                  style: TextStyle(
                                    fontSize: 7,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff334926),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 300,
                      color: Color(0xff334926),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            widget.packagetype,
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(0xff8A6A24),
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '${widget.year}\n${widget.days}',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Montserrat',
                                color: Color(0xff8A6A24),
                                fontWeight: FontWeight.w900),
                          ),
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Color(0xff8A6A24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.roomtype,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    // fontSize: 22,
                                    color: Colors.yellow,
                                  ),
                                ),
                                Text(
                                  widget.perperson,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.yellow,
                                  ),
                                ),
                                Text(
                                  widget.amount,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'book before ${widget.date}',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff334926),
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'CONTACT US : ${widget.contact}',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff334926),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.email,
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff334926),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      );
}
