import 'package:banner_generate/banner/banner_model.dart';
import 'package:banner_generate/banner/banner/banner_downloard.dart';
import 'package:banner_generate/invoice/invoice_db_helper.dart';
import 'package:banner_generate/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'invoice_download.dart';

class InvoiceTextInsert extends StatefulWidget {
  InvoiceTextInsert({super.key});

  @override
  State<InvoiceTextInsert> createState() => _InvoiceTextInsertState();
}

class _InvoiceTextInsertState extends State<InvoiceTextInsert> {
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

  InvoiceDBHelper? invoiceDBHelper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    invoiceDBHelper = InvoiceDBHelper();
  }

  final _formKey = GlobalKey<FormState>();
  // bool load = false;
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
                    hintText: 'Price',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Package Include';
                      } else {
                        return null;
                      }
                    },
                    controller: packageEditingController,
                    hintText: 'Package Include',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Date';
                      } else {
                        return null;
                      }
                    },
                    controller: dateEditingController,
                    hintText: 'Date',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Month';
                      } else {
                        return null;
                      }
                    },
                    controller: monthEditingController,
                    hintText: 'Month',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Number';
                      } else {
                        return null;
                      }
                    },
                    controller: numEditingController,
                    hintText: 'Number',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  button(
                    'continue...',
                    () async {
                      if (_formKey.currentState!.validate()) {
                        invoiceDBHelper
                            ?.insert(BannerModel(
                                name: textEditingController.text,
                                dates: dateEditingController.text,
                                month: monthEditingController.text,
                                no: numEditingController.text,
                                package: packageEditingController.text,
                                price: priceEditingController.text))
                            .then((value) {
                          AppNavigator()
                              .push(context, const InvoiceDownloard());
                          print('true');
                        }).onError((error, stackTrace) {
                          print('false');
                        });
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
