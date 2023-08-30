// import 'package:banner_generate/banner/banner_text_field/banner_text_insert.dart';
// import 'package:banner_generate/banner/view_banner.dart';
// import 'package:banner_generate/utils.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'banner_text_field/2banner_text_insert.dart';
// import 'banner_text_field/3banner_text_insert.dart';
// import 'banner_text_field/4banner_text_insert.dart';
// import 'banner_text_field/5banner_text_insert.dart';

// class ChooseTemplate extends StatelessWidget {
//   const ChooseTemplate({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List image = [
//       'flutter_02.jpg',
//       'flutter_01.png',
//       '4template_bak.jpg',
//       'flutter_03.jpg',
//       'template_bak.png',
//     ];
//     List view = [
//       BannerTextInsert(),
//       SecondBannerTextInsert(),
//       ThirdBannerTextInsert(),
//       FourBannerTextInsert(),
//       FiveBannerTextInsert()
//     ];
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(
//             'Choose Template',
//             style: TextStyle(
//                 fontStyle: FontStyle.italic,
//                 // fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontFamily: 'BebasNeue'),
//           ),
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(CupertinoIcons.back),
//           )),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//                 itemCount: image.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Container(
//                         height: size.height * 0.3,
//                         width: double.infinity,
//                         foregroundDecoration: BoxDecoration(
//                           // gradient: LinearGradient(
//                           //   colors: [
//                           //     Colors.transparent,
//                           //     Colors.white.withOpacity(.5)
//                           //   ],
//                           //   // begin: Alignment.topCenter,
//                           //   end: Alignment.center,
//                           //   stops: [0.11, 1],
//                           // ),

//                           image: DecorationImage(
//                             image: AssetImage('assets/images/${image[index]}'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         // child: Stack(
//                         //   children: [
//                         //     Image(
//                         //       height: size.height * 0.3,
//                         //       width: double.infinity,
//                         //       image:
//                         //           AssetImage('assets/images/${image[index]}'),
//                         //       fit: BoxFit.cover,
//                         //     ),
//                         //     Align(
//                         //       alignment: Alignment.centerRight,
//                         //       child: Container(
//                         //         height: double.infinity,
//                         //         width: 80,
//                         //         color: Colors.grey.shade300,
//                         //         child: Column(
//                         //           mainAxisAlignment:
//                         //               MainAxisAlignment.spaceBetween,
//                         //           children: [
//                         //             Container(
//                         //               height: 50,
//                         //               width: 50,
//                         //               decoration: BoxDecoration(
//                         //                   color: Colors.grey.shade300,
//                         //                   shape: BoxShape.circle),
//                         //               child: Center(
//                         //                 child: IconButton(
//                         //                     onPressed: () {
//                         //                       AppNavigator()
//                         //                           .push(context, view[index]);
//                         //                     },
//                         //                     icon: Icon(
//                         //                       Icons.remove_red_eye,
//                         //                       size: 30,
//                         //                       color: Colors.black,
//                         //                     )),
//                         //               ),
//                         //             ),
//                         //             Container(
//                         //               height: 50,
//                         //               width: 50,
//                         //               decoration: BoxDecoration(
//                         //                   color: Colors.grey.shade300,
//                         //                   shape: BoxShape.circle),
//                         //               child: Center(
//                         //                 child: IconButton(
//                         //                     onPressed: () {
//                         //                       AppNavigator().push(
//                         //                           context, BannerTextInsert());
//                         //                     },
//                         //                     icon: Icon(
//                         //                       Icons.edit,
//                         //                       size: 30,
//                         //                       color: Colors.black,
//                         //                     )),
//                         //               ),
//                         //             ),
//                         //           ],
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ],
//                         // ),
//                       ),
//                       SizedBox(
//                         height: size.height * 0.02,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 30),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               height: 50,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                   color: Colors.grey.shade300,
//                                   shape: BoxShape.circle),
//                               child: Center(
//                                 child: IconButton(
//                                     onPressed: () {
//                                       AppNavigator().push(
//                                           context,
//                                           //view[index]
//                                           ViewBanner(image: image[index]));
//                                     },
//                                     icon: Icon(
//                                       Icons.remove_red_eye,
//                                       size: 30,
//                                       color: Colors.black,
//                                     )),
//                               ),
//                             ),
//                             Container(
//                               height: 50,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                   color: Colors.grey.shade300,
//                                   shape: BoxShape.circle),
//                               child: Center(
//                                 child: IconButton(
//                                     onPressed: () {
//                                       AppNavigator().push(context, view[index]);
//                                     },
//                                     icon: Icon(
//                                       Icons.edit,
//                                       size: 30,
//                                       color: Colors.black,
//                                     )),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: size.height * 0.1,
//                       ),
//                     ],
//                   );
//                 }),
//           )
//         ],
//       ),
//     );
//   }
// }
