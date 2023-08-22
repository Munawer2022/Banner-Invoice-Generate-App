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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Days & Nights',
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
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  '5th June THAILAND',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          Positioned(
            top: 230,
            left: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'PKR ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '44,000',
                  style: TextStyle(
                      color: Color(0xff03646A),
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  ' Per\n Person',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 270,
            left: 10,
            child: Text(
              'INCLUSIONS',
              style: TextStyle(
                  color: Color(0xff03646A),
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
          ),
          Positioned(
            top: 200,
            right: 0,
            child: Column(
              children: [
                Transform.rotate(
                  alignment: Alignment.bottomCenter,
                  angle: 0.3,
                  child: Container(
                    height: 100.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/2bannerbac.jpg',
                          ),
                        ),
                        border: Border.all(color: Colors.white, width: 3)),
                  ),
                ),
                Transform.rotate(
                  alignment: Alignment.bottomCenter,
                  angle: -0.3,
                  child: Container(
                    height: 100.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/2bannerbac.jpg',
                          ),
                        ),
                        border: Border.all(color: Colors.white, width: 3)),
                  ),
                ),
                Transform.rotate(
                  alignment: Alignment.bottomCenter,
                  angle: 0.3,
                  child: Container(
                    height: 100.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/2bannerbac.jpg',
                          ),
                        ),
                        border: Border.all(color: Colors.white, width: 3)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '21491279479',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'helloworld@gmail.com',
                    style: TextStyle(
                        color: Color(0xffFFD53D), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
