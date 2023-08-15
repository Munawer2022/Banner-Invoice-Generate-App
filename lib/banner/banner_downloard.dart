import 'dart:io';

import 'package:banner_generate/banner/banner_model.dart';
import 'package:banner_generate/banner/db_helper.dart';

import 'package:banner_generate/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:permission_handler/permission_handler.dart';

import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class BannerDownloard extends StatefulWidget {
  const BannerDownloard({super.key});

  @override
  State<BannerDownloard> createState() => _BannerDownloardState();
}

class _BannerDownloardState extends State<BannerDownloard> {
  DBHelper? dbHelper;
  late Future<List<BannerModel>> banner;
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

  final controller = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Screenshot(
      controller: controller,
      child: SafeArea(child: Scaffold(body: buildStack())),
    );
  }

  Future saveAndShareImage(bytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final image = File('${directory.path}/flutter.png');
    image.writeAsBytesSync(bytes);
    await Share.shareXFiles(image.path as List<XFile>);
  }

  Future<String> saveImage(bytes) async {
    await [Permission.storage].request();
    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('.', '-')
        .replaceAll(':', '-');
    final name = 'screenshot_$time';
    final resilt = await ImageGallerySaver.saveImage(bytes, name: name);
    return resilt['filePath'];
  }

  Widget buildStack() => FutureBuilder(
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
                      Stack(children: [
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
                                  backgroundImage: AssetImage(
                                      'assets/images/1banneriamge.jpg'),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: button('Dowmloard...', () async {
                              // final image =
                              //     await controller.capture(text());
                              final image = await controller
                                  .captureFromWidget(buildStack())
                                  .then((value) {
                                print('true');
                              }).onError((error, stackTrace) {
                                print('false');
                              });
                              await saveAndShareImage(image);
                              if (image == null) return await saveImage(image);
                              // final pdfFile = await Pdf.generateCreated();
                              // Pdf.openFile(pdfFile);
                            }))
                      ]),
                    ],
                  );
                });
      });
}
