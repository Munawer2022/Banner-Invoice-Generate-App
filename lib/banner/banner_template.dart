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
          title: Text('Choose Templat'),
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
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/template_bak.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),

                        // child: InkWell(
                        //   onTap: () {
                        //     AppNavigator().push(context, BannerTextInsert());
                        //   },
                        //   child: Image.asset(
                        //     'assets/images/template_bak.jpg',
                        //     fit: BoxFit.cover,
                        //   ),
                        // )
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      size: 30,
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {
                                      AppNavigator()
                                          .push(context, BannerTextInsert());
                                    },
                                    icon: Icon(
                                      CupertinoIcons.rectangle_expand_vertical,
                                      size: 30,
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
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
