// import 'dart:io';

// import 'package:banner_generate/banner/banner_model.dart';
// import 'package:banner_generate/banner/banner/banner_downloard.dart';
// import 'package:banner_generate/utils.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// // import 'package:flutter/services.dart';

// import '../db_helper.dart';

// class BannerTextInsert extends StatefulWidget {
//   BannerTextInsert({super.key});

//   @override
//   State<BannerTextInsert> createState() => _BannerTextInsertState();
// }

// class _BannerTextInsertState extends State<BannerTextInsert> {
//   TextEditingController days = TextEditingController();
//   TextEditingController date = TextEditingController();
//   TextEditingController month = TextEditingController();
//   TextEditingController place_name = TextEditingController();
//   TextEditingController price = TextEditingController();
//   TextEditingController inclusions = TextEditingController();
//   TextEditingController number = TextEditingController();
//   TextEditingController email = TextEditingController();
//   // @override
//   // void dispose() {
//   //   // TODO: implement dispose
//   //   super.dispose();
//   //   textEditingController.dispose();
//   // }

//   // DBHelper? dbHelper;
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   dbHelper = DBHelper();
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

//   XFile? _spickedImage;

//   Future<void> _spickImage() async {
//     final spickedImage = await _picker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       if (spickedImage != null) {
//         _spickedImage = spickedImage;
//       }
//     });
//   }

//   XFile? _tpickedImage;

//   Future<void> _tpickImage() async {
//     final tpickedImage = await _picker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       if (tpickedImage != null) {
//         _tpickedImage = tpickedImage;
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
//                         return 'Enter days';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: days,
//                     hintText: 'days: ex 8',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter date';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: date,
//                     hintText: 'date: ex 5th',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter month';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: month,
//                     hintText: 'month: ex June',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter place name';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: place_name,
//                     hintText: 'place name: ex THAILAND',
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
//                     hintText: 'price: ex 44,000',
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter inclusions';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: inclusions,
//                     hintText: 'inclusions: ex package detail',
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
//                     height: 10,
//                   ),
//                   TextFieldForm(
//                     keyboardType: TextInputType.emailAddress,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Enter email';
//                       } else {
//                         return null;
//                       }
//                     },
//                     controller: email,
//                     hintText: 'email: ex email@gmail.com',
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       InkWell(
//                         onTap: _pickImage,
//                         child: Container(
//                           width: 150,
//                           height: 150,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             border: Border.all(color: Colors.blue, width: 2.0),
//                           ),
//                           child: _pickedImage == null
//                               ? Center(
//                                   child: Icon(
//                                     Icons.photo,
//                                     size: 80,
//                                     color: Colors.grey,
//                                   ),
//                                 )
//                               : ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.file(
//                                     File(_pickedImage!.path),
//                                     width: double.infinity,
//                                     height: double.infinity,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: _spickImage,
//                         child: Container(
//                           width: 150,
//                           height: 150,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             border: Border.all(color: Colors.blue, width: 2.0),
//                           ),
//                           child: _spickedImage == null
//                               ? Center(
//                                   child: Icon(
//                                     Icons.photo,
//                                     size: 80,
//                                     color: Colors.grey,
//                                   ),
//                                 )
//                               : ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.file(
//                                     File(_spickedImage!.path),
//                                     width: double.infinity,
//                                     height: double.infinity,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   InkWell(
//                     onTap: _tpickImage,
//                     child: Container(
//                       width: 150,
//                       height: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.blue, width: 2.0),
//                       ),
//                       child: _tpickedImage == null
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
//                                 File(_tpickedImage!.path),
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
//                             BannerDownloard(
//                               days: days.text,
//                               date: date.text,
//                               month: month.text,
//                               place_name: place_name.text,
//                               price: price.text,
//                               inclusions: inclusions.text,
//                               number: number.text,
//                               email: email.text,
//                               image: _pickedImage!.path,
//                               simage: _spickedImage!.path,
//                               timage: _tpickedImage!.path,
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
