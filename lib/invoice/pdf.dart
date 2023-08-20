// import 'dart:io';
// import 'dart:typed_data';

// import 'package:banner_generate/invoice/invoice_download.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:pdf/widgets.dart';
// import 'package:flutter/services.dart' show ByteData, rootBundle;

// Future<dynamic> loadAssetImages(List<String> assetPaths) async {
//   final List<List<int>> imageBytesList = [];

//   for (final assetPath in assetPaths) {
//     final ByteData data = await rootBundle.load(assetPath);
//     imageBytesList.add(data.buffer.asUint8List());
//   }

//   return imageBytesList;
// }

// class Pdf {
//   static Future generateCreated() async {
//     final pdf = Document();

//     final assetImagePaths = ['assets/images/invoice_image.jpg'];
//     final imageBytesList = await loadAssetImages(assetImagePaths);

//     for (final imageBytes in imageBytesList) {
//       pdf.addPage(MultiPage(
//           pageFormat: PdfPageFormat.a4,
//           build: (context) => [
//                 text(context),
//                 pw.Container(
//                     width: double.infinity,
//                     height: 400,
//                     child: pw.Image(pw.MemoryImage(imageBytes))),
//               ])); // Page
//       return saveDocument(name: 'banner_generate.pdf', pdf: pdf);
//     }
//   }

//   static Future saveDocument({
//     required String name,
//     required Document pdf,
//   }) async {
//     final bytes = await pdf.save();
//     final dir = await getApplicationCacheDirectory();
//     final file = File('${dir.path}/$name');
//     await file.writeAsBytes(bytes);
//     return file;
//   }

//   static Future openFile(file) async {
//     final url = file.path;
//     await OpenFile.open(url);
//   }
// }

// pw.Widget text(context) {
//   return pw.Column(children: [
//     pw.Center(
//       child: pw.Text(
//         'Imperial Travels & Tours',
//         style: pw.TextStyle(
//           fontSize: 30,
//           fontStyle: FontStyle.italic,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//   ]);
// }
