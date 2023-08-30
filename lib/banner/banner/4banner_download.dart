// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:screenshot/screenshot.dart';

// import '../../utils.dart';

// class FourBannerDownload extends StatefulWidget {
//   final total_first_pac_night;
//   final total_second_pac_night;
//   final total_first_pac_night_madinah;
//   final total_first_pac_night_makkah;
//   final total_second_pac_night_madinah;
//   final total_second_pac_night_makkah;
//   final pack_includ;
//   final number;

//   const FourBannerDownload({
//     super.key,
//     required this.total_first_pac_night,
//     required this.total_second_pac_night,
//     required this.total_first_pac_night_madinah,
//     required this.total_first_pac_night_makkah,
//     required this.total_second_pac_night_madinah,
//     required this.total_second_pac_night_makkah,
//     required this.pack_includ,
//     required this.number,
//   });

//   @override
//   State<FourBannerDownload> createState() => _FourBannerDownloardState();
// }

// class _FourBannerDownloardState extends State<FourBannerDownload> {
//   ScreenshotController screenshotController = ScreenshotController();

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SafeArea(
//         child: Scaffold(
//             body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Screenshot(
//               controller: screenshotController,
//               child: buildStack(
//                 size,
//               )),
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

//   Widget buildStack(size) => Stack(
//         children: [
//           Image.asset(
//             'assets/images/7bannerbac.jpg',

//             height: 500,

//             // width: double.infinity,
//             // fit: BoxFit.cover,
//           ),
//           Positioned(
//             top: 320,
//             left: 30,
//             // left: 40,
//             child: Column(
//               children: [
//                 Text(
//                   '${widget.total_first_pac_night} NIGHT\nPACKAGE',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Color(0xff8B3913),
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Oswald'),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   '${widget.total_first_pac_night_madinah} NIGHT MADINAH\n${widget.total_first_pac_night_makkah} NIGHT MECCA',

//                   // 'Hotal & Transport\nBy Bus & Flight\nVisa & Insurance',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xff8B3913),
//                       fontFamily: 'Roboto'),
//                 ),
//               ],
//             ),
//           ),
//           // Positioned(
//           //   top: 370,
//           //   left: 40,
//           //   child: Padding(
//           //     padding: const EdgeInsets.symmetric(vertical: 20),
//           //     child: IntrinsicHeight(
//           //       child: VerticalDivider(
//           //         color: Color(0xff8B3913),
//           //         thickness: 2,
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           Positioned(
//             top: 320,
//             right: 30,
//             // left: 250,
//             child: Column(
//               children: [
//                 Text(
//                   '${widget.total_second_pac_night} NIGHT\nPACKAGE',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Color(0xff8B3913),
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Oswald'),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   '${widget.total_second_pac_night_madinah} NIGHT MADINAH\n${widget.total_second_pac_night_makkah} NIGHT MECCA',

//                   // 'Hotal & Transport\nBy Bus & Flight\nVisa & Insurance',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xff8B3913),
//                       fontFamily: 'Roboto'),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 430,
//             left: 60,
//             child: Column(
//               children: [
//                 Text(
//                   'PACKAGE INCLUDED',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 9,
//                       color: Color(0xff8B3913),
//                       fontFamily: 'Roboto'),
//                 ),
//                 Text(
//                   widget.pack_includ,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 9,
//                       color: Color(0xff8B3913),
//                       fontFamily: 'Roboto'),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             left: 130,
//             child: Text(
//               widget.number,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontSize: 11, color: Colors.white, fontFamily: 'Roboto'),
//             ),
//           ),
//         ],
//       );
// }
