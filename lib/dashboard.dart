import 'package:banner_generate/new_banner/choose_template.dart';
import 'package:banner_generate/invoice/invoice_text_field/invoice_text_field.dart';
import 'package:banner_generate/new_banner/new_banner_download.dart';
import 'package:banner_generate/new_banner/new_banner_text_insert.dart';
import 'package:banner_generate/utils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

import 'excel_invoice/excel-invoice-1.dart';
import 'excel_invoice/invoice_choose_template.dart';

class Dahboard extends StatefulWidget {
  const Dahboard({super.key});

  @override
  State<Dahboard> createState() => _DahboardState();
}

class _DahboardState extends State<Dahboard> {
  @override
  initState() {
    permission();
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  void permission() async {
    print('object');
    await Permission.storage.request();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var sized = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async {
        await SystemNavigator.pop();
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 0.5, 0.11, 1],
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/dashboard_back.jpg',
                    height: 1200,
                    width: 1200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Text(
                                'Dashboard',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'BebasNeue'),
                              ),
                              Text(
                                'Dashboard',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(
                                        fontSize: 60,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(.1),
                                        fontFamily: 'BebasNeue'),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 100),
                            child: Divider(
                              color: Colors.white.withOpacity(.1),
                            ),
                          )
                        ],
                      ),
                      CarouselSlider(
                          options: CarouselOptions(
                            height: 200.0,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: false,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: [
                            newContainer(
                              context,
                              'assets/images/banner_back.png',
                              NewBannerChooseTemplate(),
                              'Banner',
                            ),
                            newContainer(
                              context,
                              'assets/images/invoice_back.png',
                              InvoiceChooseTemplate(),
                              // InvoiceTextInsert(),
                              'Invoice',
                            ),
                          ]),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 70),
                            child: Divider(
                              color: Colors.white.withOpacity(.1),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Banner & Invoice\nGenerater\n-',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'BebasNeue'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget container(BuildContext context, image, page) {
  return InkWell(
    borderRadius: BorderRadius.circular(60),
    onTap: () {
      DateTime dateTime = DateTime.now();

      debugPrint('\x1B[33m$dateTime\x1B[0m'
          // dateTime.toString()
          );
      AppNavigator().push(context, page);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => page),
      // );
    },
    child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: ExactAssetImage(image),
          fit: BoxFit.cover,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(.5),
        //     blurRadius: 13,
        //     offset: Offset(-4, 8),
        //   ),
        // ],
      ),
    ),
  );
}

Widget newContainer(BuildContext context, image, page, text) {
  return InkWell(
    borderRadius: BorderRadius.circular(60),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 3),
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          // opacity: .3,
          image: ExactAssetImage(image),
          fit: BoxFit.cover,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(.5),
        //     blurRadius: 13,
        //     offset: Offset(-4, 8),
        //   ),
        // ],
      ),
      // child: Center(
      //     child: Text(
      //   text,
      //   style: Theme.of(context).textTheme.headlineMedium?.copyWith(
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold,
      //       fontFamily: 'BebasNeue',
      //       fontStyle: FontStyle.italic),
      // )),
    ),
  );
}
