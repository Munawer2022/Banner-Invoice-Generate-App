import 'package:banner_generate/banner/banner_model.dart';
import 'package:banner_generate/banner/banner_template.dart';
import 'package:banner_generate/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'db_helper.dart';

class BannerTextInsert extends StatefulWidget {
  BannerTextInsert({super.key});

  @override
  State<BannerTextInsert> createState() => _BannerTextInsertState();
}

class _BannerTextInsertState extends State<BannerTextInsert> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController priceEditingController = TextEditingController();
  TextEditingController packageEditingController = TextEditingController();
  TextEditingController dateEditingController = TextEditingController();
  TextEditingController monthEditingController = TextEditingController();
  TextEditingController numEditingController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textEditingController.dispose();
  }

  DBHelper? dbHelper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DBHelper();
  }

  final _formKey = GlobalKey<FormState>();
  bool load = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Title';
                      } else {
                        return null;
                      }
                    },
                    controller: textEditingController,
                    hintText: 'Title',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Price';
                      } else {
                        return null;
                      }
                    },
                    controller: priceEditingController,
                    hintText: 'price',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter package';
                      } else {
                        return null;
                      }
                    },
                    controller: packageEditingController,
                    hintText: 'package',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter date';
                      } else {
                        return null;
                      }
                    },
                    controller: dateEditingController,
                    hintText: 'date',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter month';
                      } else {
                        return null;
                      }
                    },
                    controller: monthEditingController,
                    hintText: 'month',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter num';
                      } else {
                        return null;
                      }
                    },
                    controller: numEditingController,
                    hintText: 'number',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () async {
                          AppNavigator().push(context, const BannerTemplate());
                          print(dbHelper!.read().then((value) {
                            print('done');
                          }).onError((error, stackTrace) {
                            print('error');
                          }));

                          dbHelper
                              ?.insert(BannerModel(
                                  name: textEditingController.text,
                                  dates: dateEditingController.text,
                                  month: monthEditingController.text,
                                  no: numEditingController.text,
                                  package: packageEditingController.text,
                                  price: priceEditingController.text))
                              .then((value) {
                            print('true');
                          }).onError((error, stackTrace) {
                            print('false');
                          });
                          // var a = dbHelper?.read();
                          // print(a);
                          // if (_formKey.currentState!.validate()) {
                          //   load = true;
                          //   dbHelpers
                          //       ?.insert(BannerModel(
                          //           name: textEditingController.text))
                          //       .then((value) {
                          //     load = false;
                          //   }).onError((error, stackTrace) {
                          //     load = false;
                          //   });

                          //   // AppNavigator()
                          //   //     .push(context, const BannerTemplate());
                          // }
                        },
                        child: const Text('continue...')),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
