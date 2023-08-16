import 'dart:async';

import 'package:banner_generate/banner/banner_model.dart';
import 'package:banner_generate/banner/db_helper.dart';
import 'package:banner_generate/invoice/pdf.dart';

import 'package:banner_generate/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_gallery_saver/image_gallery_saver.dart';

import 'package:screenshot/screenshot.dart';

class BannerDownloard extends StatefulWidget {
  const BannerDownloard({super.key});

  @override
  State<BannerDownloard> createState() => _BannerDownloardState();
}

class _BannerDownloardState extends State<BannerDownloard> {
  DBHelper? dbHelper;
  Future<List<BannerModel>>? banner;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DBHelper();
    loadData();
  }

  loadData() async {
    banner = dbHelper!.read();
  }

  // final controller = ScreenshotController();
  // GlobalKey ssKey = GlobalKey();
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: FutureBuilder(
                future: banner,
                builder: (context, AsyncSnapshot<List<BannerModel>> snapshot) {
                  var size = MediaQuery.of(context).size;
                  return snapshot.connectionState == ConnectionState.waiting
                      ? Center(child: Text('loading...'))
                      : ListView.builder(
                          // shrinkWrap: true,
                          // reverse: true,
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Screenshot(
                                    controller: screenshotController,
                                    child: buildStack(size, snapshot, index)),
                                SizedBox(
                                  height: size.height * 0.04,
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: button('Dowmloard...', () async {
                                      _captureAndSave();
                                      // final pdfFile =
                                      //     await Pdf.generateCreated();

                                      // await Pdf.openFile(pdfFile).then((value) {
                                      //   print('opendone');
                                      // }).onError((error, stackTrace) {
                                      //   print('error ${error}');
                                      // });
                                    }))
                              ],
                            );
                          });
                })));
  }

  void _captureAndSave() async {
    screenshotController.capture().then((dynamic image) async {
      // Save the image to the gallery
      final result =
          await ImageGallerySaver.saveImage(Uint8List.fromList(image));
      if (result['isSuccess']) {
        snackbar('Screenshot saved to gallery', context);
        print("Screenshot saved to gallery");
      } else {
        print("Failed to save screenshot: ${result['errorMessage']}");
      }
    }).catchError((onError) {
      print("Error capturing screenshot: $onError");
    });
  }

  Widget buildStack(size, snapshot, index) => Stack(children: [
        Image.asset(
          'assets/images/1bannerbac.png',
          // height: double.infinity,
          // width: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1banneriamge.jpg'),
                  radius: 120,
                ),
                Text(
                  snapshot.data![index].name,
                  style: TextStyle(
                      color: Color(0xffB78A07),
                      fontSize: 40,
                      fontFamily: 'Maragsâ'),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Package Include',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff401811),
                                fontSize: 18,
                                fontFamily: 'Maragsâ'),
                          ),
                          Text(
                            snapshot.data![index].package,

                            // 'Hotal & Transport\nBy Bus & Flight\nVisa & Insurance',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff401811),
                                fontFamily: 'Roboto'),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Color(0xff401811),
                        thickness: 2,
                      ),
                      Column(
                        children: [
                          Text(
                            '${snapshot.data![index].dates}\n${snapshot.data![index].month}',
                            // 'Departure 18\nAuguest',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff401811),
                                fontSize: 24,
                                fontFamily: 'Maragsâ'),
                          ),
                          Text(
                            snapshot.data![index].price,
                            // 'PRE PERSON\n2,20,000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff401811),
                                fontFamily: 'Roboto'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Makkah Hotal : Kiswa Tower',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff401811),
                      fontFamily: 'Roboto'),
                ),
                Text(
                  'Madina Hotal : Bir Al Eiman / Warda Al Safa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff401811),
                      fontFamily: 'Roboto'),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text(
                  snapshot.data![index].no,
                  // '0321/0335-8285400',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff401811),
                      fontFamily: 'Roboto'),
                ),
              ],
            ),
          ),
        ),
      ]);
}
