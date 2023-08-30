// import 'dart:io';

// import 'package:banner_generate/banner/banner/2banner_dounloard.dart';
// import 'package:banner_generate/banner/banner_model.dart';
// import 'package:banner_generate/banner/banner/banner_downloard.dart';
// import 'package:banner_generate/utils.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// // import 'package:flutter/services.dart';

// import '../db_helper.dart';

// class SecondBannerTextInsert extends StatefulWidget {
//   SecondBannerTextInsert({super.key});

//   @override
//   State<SecondBannerTextInsert> createState() => _SecondBannerTextInsertState();
// }

// class _SecondBannerTextInsertState extends State<SecondBannerTextInsert> {
//   TextEditingController makkah_days = TextEditingController();
//   TextEditingController madinah_days = TextEditingController();
//   TextEditingController makkah_hotal_name = TextEditingController();
//   TextEditingController madinah_hotal_name = TextEditingController();
//   TextEditingController makkah_hotal_distance = TextEditingController();
//   TextEditingController madinah_hotal_distance = TextEditingController();
//   TextEditingController sharing_price = TextEditingController();
//   TextEditingController quad_price = TextEditingController();
//   TextEditingController triple_price = TextEditingController();
//   TextEditingController double_price = TextEditingController();
//   TextEditingController pack_includ = TextEditingController();
//   TextEditingController days = TextEditingController();
//   TextEditingController number = TextEditingController();

//   // }
//   final ImagePicker _picker = ImagePicker();
//   XFile? _pickedImage;

//   Future<void> _pickImage() async {
//     final pickedImage = await _picker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       if (pickedImage != null) {
//         _pickedImage = pickedImage;
//       }
//     });
//   }

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
//                         return 'Enter makkah nights';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: makkah_days,
//                     hintText: 'total makkah nights: ex 10',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter madinah nights';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: madinah_days,
//                     hintText: 'total madinah nights: ex 10',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter makkah hotal name';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: makkah_hotal_name,
//                     hintText: 'makkah hotal name: ex Osconn Hotal',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter madinah hotal name';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: madinah_hotal_name,
//                     hintText: 'madinah hotal name: ex Osconn Hotel',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter makkah hotal distance';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: makkah_hotal_distance,
//                     hintText: 'makkah hotal distance: ex (700 Meter HIJRA)',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter madinah hotal distance';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: madinah_hotal_distance,
//                     hintText: 'madinah hotal distance: ex (700 Meter HIJRA)',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter sharing price';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: sharing_price,
//                     hintText: 'sharing price: ex 235,000',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter quad price';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: quad_price,
//                     hintText: 'quad price: ex 235,000',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter triple price';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: triple_price,
//                     hintText: 'triple price: ex 235,000',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter double price';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: double_price,
//                     hintText: 'double price: ex 235,000',
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
//                     hintText: 'pack includ: ex package details',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter days';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: days,
//                     hintText: 'days: ex 20',
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
//                     hintText: 'number: ex +92',
//                   ),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   InkWell(
//                     onTap: _pickImage,
//                     child: Container(
//                       width: 150,
//                       height: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.blue, width: 2.0),
//                       ),
//                       child: _pickedImage == null
//                           ? Center(
//                               child: Icon(
//                                 Icons.photo,
//                                 size: 80,
//                                 color: Colors.grey,
//                               ),
//                             )
//                           : ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: Image.file(
//                                 File(_pickedImage!.path),
//                                 width: double.infinity,
//                                 height: double.infinity,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                     ),
//                   ),

//                   SizedBox(height: 20),
//                   // ElevatedButton(
//                   //   onPressed: _pickImage,
//                   //   child: Text('Pick Image from Gallery'),
//                   // ),
//                   button(
//                     'continue...',
//                     () async {
//                       if (_formKey.currentState!.validate()) {
//                         AppNavigator().push(
//                             context,
//                             SecondBannerDownload(
//                               makkah_days: makkah_days.text,
//                               madinah_days: madinah_days.text,
//                               makkah_hotal_name: makkah_hotal_name.text,
//                               madinah_hotal_name: madinah_hotal_name.text,
//                               makkah_hotal_distance: makkah_hotal_distance.text,
//                               madinah_hotal_distance:
//                                   madinah_hotal_distance.text,
//                               sharing_price: sharing_price.text,
//                               quad_price: quad_price.text,
//                               triple_price: triple_price.text,
//                               double_price: double_price.text,
//                               pack_includ: pack_includ.text,
//                               days: days.text,
//                               number: number.text,
//                               image: _pickedImage!.path,
//                             ));
//                         // dbHelper
//                         //     ?.insert(BannerModel(
//                         //         name: textEditingController.text,
//                         //         dates: dateEditingController.text,
//                         //         month: monthEditingController.text,
//                         //         no: numEditingController.text,
//                         //         package: packageEditingController.text,
//                         //         price: priceEditingController.text)
//                         //         )

//                         // AppNavigator().push(
//                         //     context,
//                         //     BannerDownloard(
//                         //       date: textEditingController.text,
//                         //     ));
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
