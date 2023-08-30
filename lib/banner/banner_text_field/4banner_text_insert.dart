// import 'package:banner_generate/banner/banner/3banner_download.dart';
// import 'package:banner_generate/banner/banner/4banner_download.dart';
// import 'package:banner_generate/utils.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class FourBannerTextInsert extends StatefulWidget {
//   FourBannerTextInsert({super.key});

//   @override
//   State<FourBannerTextInsert> createState() => _FourBannerTextInsertState();
// }

// class _FourBannerTextInsertState extends State<FourBannerTextInsert> {
//   TextEditingController total_first_pac_night = TextEditingController();
//   TextEditingController total_second_pac_night = TextEditingController();
//   TextEditingController total_first_pac_night_madinah = TextEditingController();
//   TextEditingController total_first_pac_night_makkah = TextEditingController();
//   TextEditingController total_second_pac_night_madinah =
//       TextEditingController();
//   TextEditingController total_second_pac_night_makkah = TextEditingController();
//   TextEditingController pack_includ = TextEditingController();
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
//                         return 'Enter total first package nights';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: total_first_pac_night,
//                     hintText: 'total first package nights: ex 7',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter total second package nights';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: total_second_pac_night,
//                     hintText: 'total second package nights: ex 7',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter total first package nights madinah';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: total_first_pac_night_madinah,
//                     hintText: 'total first package nights madinah: ex 4',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter total first package night makkah';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: total_first_pac_night_makkah,
//                     hintText: 'total first package night makkah: ex 3',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter total second package night madinah';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: total_second_pac_night_madinah,
//                     hintText: 'total second package night madinah: ex 4',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter total second package night makkah';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: total_second_pac_night_makkah,
//                     hintText: 'total second package night makkah: ex 3',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter pack includ';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: pack_includ,
//                     hintText:
//                         'package : UMRAH VISA - FLIGHT TICKET - ACCOMODATION',
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
//                     height: 20,
//                   ),
//                   button(
//                     'continue...',
//                     () async {
//                       if (_formKey.currentState!.validate()) {
//                         AppNavigator().push(
//                             context,
//                             FourBannerDownload(
//                                 total_first_pac_night:
//                                     total_first_pac_night.text,
//                                 total_second_pac_night:
//                                     total_second_pac_night.text,
//                                 total_first_pac_night_madinah:
//                                     total_first_pac_night_madinah.text,
//                                 total_first_pac_night_makkah:
//                                     total_first_pac_night_makkah.text,
//                                 total_second_pac_night_madinah:
//                                     total_second_pac_night_madinah.text,
//                                 total_second_pac_night_makkah:
//                                     total_second_pac_night_makkah.text,
//                                 pack_includ: pack_includ.text,
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
