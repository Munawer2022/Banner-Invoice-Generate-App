import 'dart:io';

import 'package:banner_generate/banner/banner/3banner_download.dart';
import 'package:banner_generate/banner/banner/4banner_download.dart';
import 'package:banner_generate/banner/banner/5banner_download.dart';
import 'package:banner_generate/new_banner/new_banner_download.dart';
import 'package:banner_generate/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../config/palette.dart';
import '../widgets/custom-text-field-hint.dart';

class NewBannerTextInsert extends StatefulWidget {
  NewBannerTextInsert({super.key});

  @override
  State<NewBannerTextInsert> createState() => _NewBannerTextInsertState();
}

class _NewBannerTextInsertState extends State<NewBannerTextInsert> {
  final month = TextEditingController();
  final companyname = TextEditingController();
  final packageincludes = TextEditingController();
  final cith1 = TextEditingController();
  final hotalname1 = TextEditingController();
  final city2 = TextEditingController();
  final hotalname2 = TextEditingController();
  final airlinename = TextEditingController();
  final withtransportorwith = TextEditingController();

  final insurance = TextEditingController();
  final name = TextEditingController();
  final year = TextEditingController();
  final days = TextEditingController();
  final roomtype = TextEditingController();
  final perperson = TextEditingController();
  final amount = TextEditingController();
  final date = TextEditingController();
  final contact = TextEditingController();
  final email = TextEditingController();

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

  XFile? _2pickedImage;

  Future<void> _2pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _2pickedImage = pickedImage;
      }
    });
  }

  final _formKey = GlobalKey<FormState>();
  bool load = false;
  @override
  Widget build(BuildContext context) {
    double bodyWidth = double.infinity;
    double bodyHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   automaticallyImplyLeading: true,
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        // ),
        body: SingleChildScrollView(
          child: Container(
            color: Palette.primaryColor.withOpacity(0.1),
            width: bodyWidth,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CustomTextFieldHint(
                  label: "Month",
                  controller: month,
                  placeholder: "Eg: Rabiul Awwal",
                  isValid: true,
                  errorText: "Month",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Imperial Travel & Tours",
                  controller: companyname,
                  placeholder: "Eg: Hijra Company",
                  isValid: true,
                  errorText: "Company Name",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Pckage Inc",
                  controller: packageincludes,
                  placeholder: "Eg: 1 night",
                  isValid: true,
                  errorText: "Pckage Inc",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "City 1",
                  controller: cith1,
                  placeholder: "Eg: Jaddah",
                  isValid: true,
                  errorText: "City 1",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Hotal Name",
                  controller: hotalname1,
                  placeholder: "Eg: Makkah Hotal",
                  isValid: true,
                  errorText: "Hotal Name",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "City 2",
                  controller: city2,
                  placeholder: "Eg: Jaddah",
                  isValid: true,
                  errorText: "City 2",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Second Hotal Name",
                  controller: hotalname2,
                  placeholder: "Eg: Makkah Hotal",
                  isValid: true,
                  errorText: "Second Hotal Name",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Airline Name",
                  controller: airlinename,
                  placeholder: "Eg: Airline",
                  isValid: true,
                  errorText: "Airline Name",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "With Trasnport by Car",
                  controller: withtransportorwith,
                  placeholder: "Eg: With Transport",
                  isValid: true,
                  errorText: "With Trasnport by Car",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Insurance",
                  controller: insurance,
                  placeholder: "Eg: insurance",
                  isValid: true,
                  errorText: "insurance",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Name",
                  controller: name,
                  placeholder: "Eg: Umrah",
                  isValid: true,
                  errorText: "name",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Year",
                  controller: year,
                  placeholder: "Eg: 2023",
                  isValid: true,
                  errorText: "year",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Days",
                  controller: days,
                  placeholder: "Eg: 12 Days",
                  isValid: true,
                  errorText: "Days",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Room Type",
                  controller: roomtype,
                  placeholder: "Eg: Room Type",
                  isValid: true,
                  errorText: "Room Type",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Per Person",
                  controller: perperson,
                  placeholder: "Eg: 12,000",
                  isValid: true,
                  errorText: "Per Person",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Amount",
                  controller: amount,
                  placeholder: "Eg: 12,000",
                  isValid: true,
                  errorText: "Amount",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Date",
                  controller: date,
                  placeholder: "Eg: 15 sept",
                  isValid: true,
                  errorText: "Date",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Contact",
                  controller: contact,
                  placeholder: "Eg: +92 1035",
                  isValid: true,
                  errorText: "Contact",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                CustomTextFieldHint(
                  label: "Email",
                  controller: email,
                  placeholder: "Eg: A@gmail.com",
                  isValid: true,
                  errorText: "Email",
                  hint: "",
                  textType: TextInputType.text,
                  onChanged: () {
                    return false;
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: _pickImage,
                      child: Container(
                        width: 140,
                        height: 140,
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
                                  Text('makkah image')
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
                    InkWell(
                      onTap: _2pickImage,
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 2.0),
                        ),
                        child: _2pickedImage == null
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
                                  Text('madinah image')
                                ],
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  File(_2pickedImage!.path),
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  color: Palette.primaryColor,
                  disabledColor: Colors.grey,
                  onPressed: () {
                    AppNavigator().push(
                        context,
                        NewBannerDownload(
                            makkahimage: _pickedImage!.path,
                            madinahimage: _2pickedImage!.path,
                            month: month.text,
                            companyname: companyname.text,
                            packageincludes: packageincludes.text,
                            cith1: cith1.text,
                            hotalname1: hotalname1.text,
                            city2: city2.text,
                            hotalname2: hotalname2.text,
                            airlinename: airlinename.text,
                            visatransportbybus: withtransportorwith.text,
                            insurance: insurance.text,
                            name: name.text,
                            year: year.text,
                            days: days.text,
                            roomtype: roomtype.text,
                            perperson: perperson.text,
                            amount: amount.text,
                            date: date.text,
                            contact: contact.text,
                            email: email.text)
                            );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Generate PDF",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
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