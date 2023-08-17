// import 'package:banner_generate/banner/banner_text_insert.dart';
import 'package:banner_generate/banner/banner_downloard.dart';
import 'package:flutter/material.dart';

// import 'banner/banner_downloard.dart';
import 'banner/2banner_dounloard.dart';
import 'banner/3banner_download.dart';
import 'banner/banner_template.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: Dahboard());
  }
}
