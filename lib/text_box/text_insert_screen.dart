import 'package:banner_generate/text_box/text_box_model.dart';
import 'package:banner_generate/text_box/text_read_screen.dart';
import 'package:banner_generate/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'text_box_db.dart';

class TextInsertScreen extends StatefulWidget {
  TextInsertScreen({super.key});

  @override
  State<TextInsertScreen> createState() => _TextInsertScreenState();
}

class _TextInsertScreenState extends State<TextInsertScreen> {
  TextEditingController textEditingController = TextEditingController();

  // bool load = false;
  DBTextBox? dbTextBox;
  // Future<List<TextBoxModel>>? textboxmodel;
  @override
  void initState() {
    super.initState();
    dbTextBox = DBTextBox();
    // loadData();
  }

  // loadData() async {
  //   textboxmodel = dbTextBox!.read();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Text Box'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFieldForm(
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'text box';
                    } else {
                      return null;
                    }
                  },
                  controller: textEditingController,
                  hintText: 'text box',
                ),
                const SizedBox(
                  height: 10,
                ),
                button(
                  'insert & read',
                  () {
                    AppNavigator().push(context, const TextReadScreen());
                    dbTextBox
                        ?.insert(TextBoxModel(name: textEditingController.text))
                        .then((value) => print('save'))
                        .onError(
                            (error, stackTrace) => print('not save $error'));
                    // print(loadData());
                  },
                ),
                const SizedBox(height: 10),
                // FutureBuilder(
                //     future: textboxmodel,
                //     builder:
                //         (context, AsyncSnapshot<List<TextBoxModel>> snapshot) {
                //       return snapshot.connectionState == ConnectionState.waiting
                //           ? const Center(child: Text('loading...'))
                //           : SizedBox(
                //               height: 300,
                //               width: double.infinity,
                //               child: ListView.builder(
                //                   itemCount: snapshot.data?.length,
                //                   itemBuilder: (context, index) =>
                //                       snapshot.data == null
                //                           ? null
                //                           : Text(snapshot.data![index].name
                //                               .toString())),
                //             );
                //     })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
