// import 'dart:io';

// import 'package:banner_generate/banner/banner/2banner_dounloard.dart';
// import 'package:banner_generate/banner/banner/3banner_download.dart';
// import 'package:banner_generate/banner/banner_model.dart';
// import 'package:banner_generate/banner/banner/banner_downloard.dart';
// import 'package:banner_generate/utils.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// // import 'package:flutter/services.dart';

// import '../db_helper.dart';

// class ThirdBannerTextInsert extends StatefulWidget {
//   ThirdBannerTextInsert({super.key});

//   @override
//   State<ThirdBannerTextInsert> createState() => _ThirdBannerTextInsertState();
// }

// class _ThirdBannerTextInsertState extends State<ThirdBannerTextInsert> {
//   TextEditingController year = TextEditingController();
//   TextEditingController price = TextEditingController();
//   TextEditingController title = TextEditingController();
//   TextEditingController p1 = TextEditingController();
//   TextEditingController p2 = TextEditingController();
//   TextEditingController p3 = TextEditingController();
//   TextEditingController contack_us = TextEditingController();
//   TextEditingController address = TextEditingController();
//   TextEditingController number = TextEditingController();

//   final _formKey = GlobalKey<FormState>();
//   bool load = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.transparent,
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(CupertinoIcons.back),
//             )),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter year';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: year,
//                     hintText: 'year: ex 2023',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter price';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: price,
//                     hintText: 'price: ex 200,000',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter title';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: title,
//                     hintText: 'title',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter package name';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: p1,
//                     hintText: 'place package name: ex Umrah Visa',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter air line name';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: p2,
//                     hintText: 'air line name: ex Air Ticket',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter hotal name';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: p3,
//                     hintText: 'hotal name',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter contack us';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: contack_us,
//                     hintText: 'contack us',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.streetAddress,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter address';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: address,
//                     hintText: 'address',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter number';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: number,
//                     hintText: 'number',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   button(
//                     'continue...',
//                     () async {
//                       if (_formKey.currentState!.validate()) {
//                         AppNavigator().push(
//                             context,
//                             ThirdBannerDownload(
//                                 year: year.text,
//                                 price: price.text,
//                                 title: title.text,
//                                 p1: p1.text,
//                                 p2: p2.text,
//                                 p3: p3.text,
//                                 contack_us: contack_us.text,
//                                 address: address.text,
//                                 number: number.text)
//                             // dbHelper
//                             //     ?.insert(BannerModel(
//                             //         name: textEditingController.text,
//                             //         dates: dateEditingController.text,
//                             //         month: monthEditingController.text,
//                             //         no: numEditingController.text,
//                             //         package: packageEditingController.text,
//                             //         price: priceEditingController.text)
//                             //         )

//                             // AppNavigator().push(
//                             //     context,
//                             //     BannerDownloard(
//                             //       date: textEditingController.text,
//                             //     ));
//                             );
//                       }
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
