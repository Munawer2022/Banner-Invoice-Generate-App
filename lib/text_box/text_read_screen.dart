import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'text_box_db.dart';
import 'text_box_model.dart';

class TextReadScreen extends StatefulWidget {
  const TextReadScreen({super.key});

  @override
  State<TextReadScreen> createState() => _TextReadScreenState();
}

class _TextReadScreenState extends State<TextReadScreen> {
  DBTextBox? dbTextBox;
  Future<List<TextBoxModel>>? textboxmodel;
  @override
  void initState() {
    super.initState();
    dbTextBox = DBTextBox();
    loadData();
  }

  loadData() async {
    textboxmodel = dbTextBox!.read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
              future: textboxmodel,
              builder: (context, AsyncSnapshot<List<TextBoxModel>> snapshot) {
                return snapshot.connectionState == ConnectionState.waiting
                    ? const Center(child: Text('loading...'))
                    : SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) => snapshot.data ==
                                    null
                                ? null
                                : Text(snapshot.data![index].name.toString())),
                      );
              })
        ],
      ),
    );
  }
}
