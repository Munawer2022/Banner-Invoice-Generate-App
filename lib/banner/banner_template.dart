import 'package:banner_generate/banner/banner_text_insert.dart';
import 'package:banner_generate/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerTemplate extends StatelessWidget {
  const BannerTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.back),
          )),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                          height: size.height * 0.3,
                          width: double.infinity,
                          // foregroundDecoration: BoxDecoration(
                          //   image: DecorationImage(
                          //     image: AssetImage('assets/images/template_bak.jpg'),
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),
                          child: InkWell(
                            onTap: () {
                              AppNavigator().push(context, BannerTextInsert());
                            },
                            child: Image.asset(
                              'assets/images/template_bak.jpg',
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
