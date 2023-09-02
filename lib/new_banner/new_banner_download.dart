import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import '../../utils.dart';

class NewBannerDownload extends StatefulWidget {
  // final makkahimage;
  // final madinahimage;
  // final month;
  // final companyname;
  // final packageincludes;
  // final cith1;
  // final hotalname1;
  // final city2;
  // final hotalname2;
  // final airlinename;
  // final visatransportbybus;

  // final insurance;
  // final name;
  // final year;
  // final days;
  // final roomtype;
  // final perperson;
  // final amount;
  // final date;
  // final contact;
  // final email;

  const NewBannerDownload({
    super.key,
    // required this.makkahimage,
    // required this.madinahimage,
    // required this.month,
    // required this.companyname,
    // required this.packageincludes,
    // required this.cith1,
    // required this.hotalname1,
    // required this.city2,
    // required this.hotalname2,
    // required this.airlinename,
    // required this.visatransportbybus,
    // required this.insurance,
    // required this.name,
    // required this.year,
    // required this.days,
    // required this.roomtype,
    // required this.perperson,
    // required this.amount,
    // required this.date,
    // required this.contact,
    // required this.email,
  });

  @override
  State<NewBannerDownload> createState() => _FiveBannerDownloardState();
}

class _FiveBannerDownloardState extends State<NewBannerDownload> {
  @override
  void initState() {
    super.initState();
  }

  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            // resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
      child: Column(
        children: [
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

  Widget buildStack() => Container(
        color: Color(0xff334926),
        height: 655,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Color(0xff8A6A24),
                      height: 15,
                      width: 140,
                    ),
                    Expanded(
                      child: Container(
                        color: Color(0xff8A6A24),
                        height: 7,
                        // width:
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            // FileImage(File(widget.makkahimage)),
                            AssetImage(
                          'assets/images/3banner_iamge.jpg',
                        ),
                      )),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/logo.jpg',
                            scale: 2,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 280,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              // FileImage(File(widget.madinahimage)),
                              AssetImage(
                            'assets/images/madina.jpg',
                          ),
                        )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            // widget.month ??
                            'Rabiul Awwal',
                            style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Color(0xff334926),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Color(0xff8A6A24),
                      height: 10,
                      width: 140,
                    ),
                    Expanded(
                      child: Container(
                        color: Color(0xff8A6A24),
                        height: 7,
                        // width:
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 5),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 300,
                  width: 200,
                  color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        // widget.companyname ??
                        'IMPERIAL TRAVELS & TOURS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 10),
                      Text(
                        // widget.packageincludes ??
                        'package includes',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Handlee',
                          color: Colors.black,
                        ),
                      ),
                      // SizedBox(height: 10),
                      Text(
                        // widget.cith1 ??
                        'MAKKAH',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff334926),
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        // widget.hotalname1 ??
                        'Mayar Maysor',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w100,
                          color: Color(0xff334926),
                        ),
                      ),
                      Text(
                        // widget.city2 ??
                        'MEDINAH',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff334926),
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        // widget.hotalname2 ??
                        'Sama Quba',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w100,
                          color: Color(0xff334926),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            // widget.airlinename ??
                            'ANY AIRLINE',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff334926),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            // widget.visatransportbybus ??
                            'VISA TRANSPORT BY BUS',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff334926),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            // widget.insurance ??
                            'INSURANCE',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff334926),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 290,
                    color: Color(0xff334926),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SizedBox(height: 10),
                        Text(
                          // widget.name ??
                          'UMRAH',

                          style: TextStyle(
                              height: 1.0,
                              fontSize: 50,
                              fontFamily: 'Oswald',
                              color: Color(0xff8A6A24),
                              fontWeight: FontWeight.w800),
                        ),
                        // SizedBox(height: 20),
                        Text(
                          '2023\n15 DAYS',
                          // '${widget.year ?? '2023'}\n${widget.days ?? '15 DAYS'}',
                          textAlign: TextAlign.center,

                          style: TextStyle(
                              height: 1.0,
                              fontSize: 28,
                              fontFamily: 'Oswald',
                              color: Color(0xff8A6A24),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        CircleAvatar(
                          radius: 70,
                          backgroundColor: Color(0xff8A6A24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                // widget.roomtype ??
                                'QUAD BASIS',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  // fontSize: 22,
                                  color: Colors.yellow,
                                ),
                              ),
                              Text(
                                // widget.perperson ??
                                'PER PERSON',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.yellow,
                                ),
                              ),
                              Text(
                                // widget.amount ??
                                '200,000',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(height: 10),
                        // Container(
                        //   height: 20,
                        //   width: double.infinity,
                        //   color: Colors.white,
                        // )
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
                            'book before 15 sept',
                            //    'book before ${widget.date ?? '15 sept'}',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff334926),
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'CONTACT US : 812496218964',
                            //  'CONTACT US : ${widget.contact ?? '812496218964'}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff334926),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        // widget.email ??
                        'a@gmail.com',
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
      );
}
