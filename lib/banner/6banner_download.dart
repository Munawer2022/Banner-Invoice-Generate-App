import 'package:flutter/material.dart';

class SixBannerDownload extends StatelessWidget {
  const SixBannerDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/6bannerbac.jpg',
            height: 550,
            // width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text(
                      '8',
                      style: TextStyle(
                          color: Color(0xffFFD53D),
                          fontSize: 50,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        'Days and',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      '7',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        'Nights',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Travel',
                style: TextStyle(
                    color: Color(0xffFFD53D),
                    fontSize: 40,
                    fontFamily: 'Maragsâ',
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
