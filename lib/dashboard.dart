import 'package:banner_generate/utils.dart';
import 'package:flutter/material.dart';

import 'banner/banner_template.dart';

class Dahboard extends StatelessWidget {
  const Dahboard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button('banner', () {
              AppNavigator().push(context, const BannerTemplate());
            }),
            SizedBox(
              height: size.height * 0.04,
            ),
            button('invoice', () {})
          ],
        ),
      ),
    );
  }
}
