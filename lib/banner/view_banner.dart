import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewBanner extends StatelessWidget {
  final image;
  const ViewBanner({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(CupertinoIcons.back),
            )),
        body: Center(
          child: Image.asset(
            'assets/images/$image',

            // height: double.negativeInfinity,

            // width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
