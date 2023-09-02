import 'package:flutter/material.dart';

class CompanyDetail extends StatefulWidget {
  final title;
  const CompanyDetail({super.key, this.title});

  @override
  State<CompanyDetail> createState() => _CompanyDetailState();
}

class _CompanyDetailState extends State<CompanyDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(body: buildStack()));
  }

  Widget buildStack() => Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/invoice_text.jpg',
                  // height: double.infinity,s
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // const SizedBox(height: 5),
                Center(
                  child: Text(
                    widget.title ?? 'U-0001 ASLAM MERANI 21 DAYS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9,
                      color: Colors.red.shade300,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red.shade300,
                    ),
                  ),
                ),
                // SizedBox(height: 15),
                Image.asset(
                  'assets/images/invoice_image.jpg',
                  // height: double.infinity,
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // const SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HOTEL NIGHTS:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 9,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 7,
                            color: Color(0xff4272AC),
                          ),
                          children: [
                            TextSpan(text: '06 Nights in '),
                            TextSpan(
                                text: 'AREEJ AL FALAH or any similar ',
                                style: TextStyle(color: Colors.red)),
                            TextSpan(text: 'in Makkah (2 DOUBLE Bed ROOM)')
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 7,
                            color: Color(0xff4272AC),
                          ),
                          children: [
                            TextSpan(text: '11 Nights in '),
                            TextSpan(
                                text: 'BIR AL EMAN or any similar ',
                                style: TextStyle(color: Colors.red)),
                            TextSpan(text: 'in Madina (2 DOUBLE Bed ROOM)')
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 7,
                            color: Color(0xff4272AC),
                          ),
                          children: [
                            TextSpan(text: '03 Nights in '),
                            TextSpan(
                                text: 'AREEJ AL FALAH or any similar ',
                                style: TextStyle(color: Colors.red)),
                            TextSpan(text: 'in Makkah (2 DOUBLE Bed ROOM)')
                          ],
                        ),
                      ),
                      const SizedBox(height: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Package Include:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.red.shade700,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.red.shade700,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '(VISA)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                      color: Color(0xff4272AC),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Saudi Airline',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 9,
                                      color: Color(0xff4272AC),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Text(
                                    'SV 06SEP KHIJED 0540 0925',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 7,
                                      color: Colors.red.shade700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Text(
                                    'SV 23SEP JEDKHI 1040 0625',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 7,
                                      color: Colors.red.shade700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          // const SizedBox(height: 15),
                          Text(
                            '(FULL TRANSPORT BY INOVA) (HEALTH INSURANCE)',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 7,
                              color: Color(0xff4272AC),
                            ),
                          ),
                          Text(
                            ' (DIRECT SAUDIA AIRLINE)',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 10,
                              color: Colors.red.shade700,
                              decorationColor: Colors.red.shade700,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                children: [
                                  Text(
                                    'Total Amount',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 9,
                                      color: Color(0xff4272AC),
                                    ),
                                  ),
                                  Text(
                                    'Adult:          350,000 x 3 =          1050,000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                      color: Colors.red.shade700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Text(
                                    'Total:             302,000 x 3 =          906,000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                      color: Colors.red.shade700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Text(
                                    'Total:                                 =          1956,000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                      color: Colors.red.shade700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 35),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Note: Exchange rate volatility can also have effect on Package.',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 6,
                                color: Colors.red.shade700,
                              ),
                            ),
                            Text(
                              'نوٹ: ‌‌‌‌شرح مبادلہ میں اتار چڑھاؤ پیکیج پر بھی پڑ سکتا ہے',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.red.shade700,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'This is to bring to your knowledge that nowadays Saudi Visa applications are being rejected without any reason.\n\nWe would like to inform you that incase of any rejection 100% Visa payment will be charged. There is no refund of Rejected Visa.\n\nHotel Booking Non-Refundable and Amendment as per subject to availability of rooms with difference of rates and riyal.',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 6,
                          color: Colors.red.shade700,
                        ),
                      ),
                      Divider(
                        // thickness: 1,
                        color: Colors.black87,
                      ),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 7,
                              color: Colors.black87),
                          children: [
                            TextSpan(
                                text:
                                    'Office: 29-C, Shop # 2, Sunset Commercial Street # 4, Phase-IV D.H.A, Karachi. Tel: +92-21-32415006 Cell: 0321-8285400, 0335-8285400 Email '),
                            TextSpan(
                                text: 'imperialtravles@gmail.com',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        color: Colors.lightBlue,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'After finalizing the package, if any tax is applied by the Saudi government, we will also charge you.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 6,
                                        color: Colors.yellow),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'پیکج فائنل کرنے کے بعد اگر سعودی حکومت کی طرف سے کوئی ٹیکس لاگو ہوتا ہے تو ہم آپ سے بھی چارج کریں گے۔',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 6,
                                          color: Colors.yellow),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All rates are subject to change or availability of seats and rooms. Fare is not guaranteed until you buy a ticket.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 6,
                                        color: Colors.yellow),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'تمام ریٹس کو تبدیل کرنے یا سیٹوں اور کمروں کی دستیابی پر منحصر ہے۔ ٹکٹ خریدنے تک کرایہ کی ضمانت نہیں',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 6,
                                          color: Colors.yellow),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'It may be a little more or less than a hotel meter.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 6,
                                        color: Colors.yellow),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'بوتل میٹر میں سے تھوڑا زیاده یا کم بوسکتا ہے',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 6,
                                          color: Colors.yellow),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      );
}
