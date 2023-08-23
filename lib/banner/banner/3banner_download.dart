import 'package:flutter/material.dart';

class ThreeBannerDownload extends StatelessWidget {
  const ThreeBannerDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.teal, BlendMode.color),
            child: Image.asset(
              'assets/images/5bannerbac.jpg',
              height: 550,
              // width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/3banner_iamge.jpg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          //<-- SEE HERE
                          width: 2,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.teal,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Center(
                          child: Text(
                            'UMRAH',
                            style: TextStyle(
                                color: Color.fromARGB(255, 236, 196, 62),
                                fontSize: 40,
                                fontFamily: 'Maragsâ',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MAKKAH : 10 NIGHTS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              'OSCONN HOTAL',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                            Text(
                              '(700 METER HIJRA ROAD)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MAKKAH : 10 NIGHTS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              'OSCONN HOTAL',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                            Text(
                              '(700 METER HIJRA ROAD)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Divider(
                          thickness: 3,
                        ),
                        Divider(
                          indent: 100,
                          endIndent: 100,
                          color: Colors.black,
                          thickness: 3,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sharing',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              '235,000',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Quad',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              '235,000',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Triple',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              '235,000',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Double',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            Text(
                              '235,000',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PACKAGE INCLUSIONS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                  fontSize: 11),
                            ),
                            Text(
                              'Air Ticket (FlyDubai) Hotel Accommodation\nFull Transport by Bus Visa + Insurance\nZiyarat (Mak,Mad, Taif,Badar)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontFamily: 'Roboto',
                                  fontSize: 9),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '20',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 196, 62),
                                  fontSize: 70,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Maragsâ',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '/ Days',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        // Container(
                        //   height: 70,
                        //   width: 70,
                        //   decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color: Colors.black,
                        //       border:
                        //           Border.all(width: 3, color: Colors.white)),
                        // )
                        // Text(
                        //   'flydubai',
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.w900,
                        //       fontSize: 26),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.white,
                child: Center(
                    child: Text(
                  '0321/0335-8285400',
                  style: TextStyle(fontSize: 18),
                )),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
