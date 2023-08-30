// import 'dart:async';

// import 'package:banner_generate/banner/banner_model.dart';
// import 'package:banner_generate/banner/db_helper.dart';
// import 'package:banner_generate/pdf/pdf.dart';

// import 'package:banner_generate/utils.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// import 'package:image_gallery_saver/image_gallery_saver.dart';

// import 'package:screenshot/screenshot.dart';

// class InvoiceDownloard extends StatefulWidget {
//   final title;
//   const InvoiceDownloard({super.key, this.title});

//   @override
//   State<InvoiceDownloard> createState() => _InvoiceDownloardState();
// }

// class _InvoiceDownloardState extends State<InvoiceDownloard> {
//   // DBHelper? dbHelper;
//   // Future<List<BannerModel>>? banner;
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   dbHelper = DBHelper();
//   //   loadData();
//   // }

//   // loadData() async {
//   //   banner = dbHelper!.read();
//   // }

//   // final controller = ScreenshotController();

//   ScreenshotController screenshotController = ScreenshotController();

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SafeArea(
//         child: Scaffold(
//             body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Screenshot(controller: screenshotController, child: buildStack()),
//           SizedBox(
//             height: size.height * 0.04,
//           ),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: button('Dowmloard...', () async {
//                 captureAndSave(screenshotController, context);
//               }))
//         ],
//       ),
//     )));
//   }

//   Widget buildStack() => Stack(
//         children: [
//           Container(
//             height: 636,
//             width: double.infinity,
//             color: Colors.white,
//           ),
//           // Image.asset(
//           //   'assets/images/6bannerbac.jpg',
//           //   // 'assets/images/1bannerbac.png',
//           //   // height: 500,

//           //   // width: double.infinity,s
//           //   fit: BoxFit.cover,
//           // ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Image.asset(
//                 'assets/images/invoice_text.jpg',
//                 // height: double.infinity,s
//                 // width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//               const SizedBox(height: 5),
//               Center(
//                 child: Text(
//                   widget.title ?? 'U-0001 ASLAM MERANI 21 DAYS',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 9,
//                     color: Colors.red.shade300,
//                     decoration: TextDecoration.underline,
//                     decorationColor: Colors.red.shade300,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Image.asset(
//                 'assets/images/invoice_image.jpg',
//                 // height: double.infinity,
//                 // width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//               const SizedBox(height: 5),
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Package Include:',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 9,
//                         color: Colors.black,
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                     const SizedBox(height: 3),
//                     Text.rich(
//                       TextSpan(
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 8,
//                           color: Color(0xff4272AC),
//                         ),
//                         children: [
//                           TextSpan(text: '04 Nights in '),
//                           TextSpan(
//                               text: 'Emar Andalosia 400 Meter or any similar ',
//                               style: TextStyle(color: Colors.red)),
//                           TextSpan(text: 'in Makkah (Triple BED)')
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 3),
//                     Text.rich(
//                       TextSpan(
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 8,
//                           color: Color(0xff4272AC),
//                         ),
//                         children: [
//                           TextSpan(text: '11 Nights in '),
//                           TextSpan(
//                               text:
//                                   'ARTAL MUNAWAWRA 250 Meter or any similar Markazia ',
//                               style: TextStyle(color: Colors.red)),
//                           TextSpan(text: 'in Makkah (Triple BED)')
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 3),
//                     Text.rich(
//                       TextSpan(
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 8,
//                           color: Color(0xff4272AC),
//                         ),
//                         children: [
//                           TextSpan(text: '04 Nights in '),
//                           TextSpan(
//                               text: 'Emar Andalosia 400 Meter or any similar ',
//                               style: TextStyle(color: Colors.red)),
//                           TextSpan(text: 'in Makkah (Triple BED)')
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 3),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'RETURN AIR TICKET',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 8,
//                                 color: Color(0xff4272AC),
//                               ),
//                             ),
//                             const SizedBox(height: 5),
//                             Text(
//                               'ACQUISITION OF UMRAH VISA',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 8,
//                                 color: Color(0xff4272AC),
//                               ),
//                             ),
//                             const SizedBox(height: 5),
//                             Text(
//                               'HEALTH INSURANCE',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 8,
//                                 color: Color(0xff4272AC),
//                               ),
//                             ),
//                             const SizedBox(height: 5),
//                             Text(
//                               'FULL SHARING TRANSPORT BY BUS',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 8,
//                                 color: Color(0xff4272AC),
//                               ),
//                             ),
//                             const SizedBox(height: 5),
//                             Text(
//                               'ZIYARAT BY BUS MAK AND MADINA',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 8,
//                                 color: Color(0xff4272AC),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'SAUDI AIR',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w900,
//                                     fontSize: 8,
//                                     color: Colors.red.shade700,
//                                     decoration: TextDecoration.underline,
//                                   ),
//                                 ),
//                                 Text(
//                                   '19 AUG KHIJED HS1 1010 1215',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 8,
//                                     color: Colors.black,
//                                     decoration: TextDecoration.underline,
//                                   ),
//                                 ),
//                                 Text(
//                                   '08 SEPT JEDKHI HS1 0225 0825',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 8,
//                                     color: Colors.black,
//                                     decoration: TextDecoration.underline,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 35),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 20),
//                               child: Column(
//                                 children: [
//                                   Text(
//                                     'Total Amount',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 8,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   Text(
//                                     'Adult:          291,000 x 3 =          873,000',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 8,
//                                       color: Colors.red.shade700,
//                                       decoration: TextDecoration.underline,
//                                     ),
//                                   ),
//                                   Text(
//                                     'Total:                      =          873,000',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 8,
//                                       color: Colors.red.shade700,
//                                       decoration: TextDecoration.underline,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 35),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             'Note: Exchange rate volatility can also have an effect on the package.',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w900,
//                               fontSize: 6,
//                               color: Colors.red.shade700,
//                             ),
//                           ),
//                           Text(
//                             'شرح مبادلہ میں اتار چڑھاؤ کا اثر پیکیج پر بھی پڑ سکتا ہے',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 9,
//                               color: Colors.red.shade700,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Divider(
//                       // thickness: 1,
//                       color: Colors.black87,
//                     ),
//                     Text.rich(
//                       TextSpan(
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 7,
//                             color: Colors.black87),
//                         children: [
//                           TextSpan(
//                               text:
//                                   'Office: 29-C, Shop # 2, Sunset Commercial Street # 4, Phase-IV D.H.A, Karachi. Tel: +92-21-32415006 Cell: 0321-8285400, 0335-8285400 Email: '),
//                           TextSpan(
//                               text: 'imperialtravles@gmail.com',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   decoration: TextDecoration.underline)),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Container(
//                       width: double.infinity,
//                       color: Colors.lightBlue,
//                       child: Padding(
//                         padding: const EdgeInsets.all(2.0),
//                         child: Column(
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   'After finalizing the package, if any tax is applied by the Saudi government, we will also charge you.',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 6,
//                                       color: Colors.yellow),
//                                 ),
//                                 Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Text(
//                                     'پیکیج فائنل کرنے کے بعد اگر سعودی حکومت کی طرف سے کوئی بھی ٹیکس لاگو ہوتا ہے تو ہم آپ سے بھی لینگے۔',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 6,
//                                         color: Colors.yellow),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   'All rates are subject to change or availability of seats and rooms. Fare is not guaranteed until you buy a ticket.',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 6,
//                                       color: Colors.yellow),
//                                 ),
//                                 Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Text(
//                                     'تمام ریٹس کو تبدیل کرنے یا سیٹوں اور کمروں کی دستیابی پر منحصر ہے۔ ٹکٹ خریدنے تک کرایہ کی ضمانت نہیں',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 6,
//                                         color: Colors.yellow),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   'It may be a little more or less than a hotel meter.',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 6,
//                                       color: Colors.yellow),
//                                 ),
//                                 Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Text(
//                                     'بوتل میٹر میں سے تھوڑا زیاده یا کم بوسکتا ہے',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 6,
//                                         color: Colors.yellow),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ]),
//           ),
//         ],
//       );
// }
