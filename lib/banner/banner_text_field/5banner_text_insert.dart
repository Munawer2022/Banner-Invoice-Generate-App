import 'dart:io';

import 'package:banner_generate/banner/banner/3banner_download.dart';
import 'package:banner_generate/banner/banner/4banner_download.dart';
import 'package:banner_generate/banner/banner/5banner_download.dart';
import 'package:banner_generate/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FiveBannerTextInsert extends StatefulWidget {
  FiveBannerTextInsert({super.key});

  @override
  State<FiveBannerTextInsert> createState() => _FiveBannerTextInsertState();
}

class _FiveBannerTextInsertState extends State<FiveBannerTextInsert> {
  TextEditingController year = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController number = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  XFile? _pickedImage;

  Future<void> _pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _pickedImage = pickedImage;
      }
    });
  }

  final _formKey = GlobalKey<FormState>();
  bool load = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(CupertinoIcons.back),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFieldForm(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter year';
                      } else {
                        return null;
                      }
                    },
                    controller: year,
                    hintText: 'year: ex 2023',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter price';
                      } else {
                        return null;
                      }
                    },
                    controller: price,
                    hintText: 'price: ex 22,000',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter description';
                      } else {
                        return null;
                      }
                    },
                    controller: description,
                    hintText: 'description: ex package details',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter number';
                      } else {
                        return null;
                      }
                    },
                    controller: number,
                    hintText: 'number',
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: _pickImage,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue, width: 2.0),
                      ),
                      child: _pickedImage == null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.photo,
                                    size: 80,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text('Logo')
                              ],
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(_pickedImage!.path),
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  button(
                    'continue...',
                    () async {
                      if (_formKey.currentState!.validate()) {
                        AppNavigator().push(
                            context,
                            FiveBannerDownload(
                                year: year.text,
                                price: price.text,
                                description: description.text,
                                logo: _pickedImage!.path,
                                number: number.text)
                            // dbHelper
                            //     ?.insert(BannerModel(
                            //         name: textEditingController.text,
                            //         dates: dateEditingController.text,
                            //         month: monthEditingController.text,
                            //         no: numEditingController.text,
                            //         package: packageEditingController.text,
                            //         price: priceEditingController.text)
                            //         )

                            // AppNavigator().push(
                            //     context,
                            //     BannerDownloard(
                            //       date: textEditingController.text,
                            //     ));
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
