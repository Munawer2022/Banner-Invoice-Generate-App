import 'package:banner_generate/pdf/pdf_text_field.dart';
import 'package:flutter/material.dart';
import 'banner/banner/4banner_download.dart';
import 'banner/banner_text_field/3banner_text_insert.dart';
import 'banner/banner_text_field/4banner_text_insert.dart';
import 'dashboard.dart';
import 'excel_invoice/excel-invoice-1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  MaterialColor mycolor = const MaterialColor(
    0xFF8CD14E,
    <int, Color>{
      50: Color(0xFF8CD14E),
      100: Color(0xFF8CD14E),
      200: Color(0xFF8CD14E),
      300: Color(0xFF8CD14E),
      400: Color(0xFF8CD14E),
      500: Color(0xFF8CD14E),
      600: Color(0xFF8CD14E),
      700: Color(0xFF8CD14E),
      800: Color(0xFF8CD14E),
      900: Color(0xFF8CD14E),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: mycolor,
            fontFamily: 'Montserrat',
            useMaterial3: true),
        home: ExcelInvoice1());
  }
}
