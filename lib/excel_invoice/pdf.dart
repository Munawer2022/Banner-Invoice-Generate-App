import 'dart:io';
import 'package:banner_generate/excel_invoice/excel-invoice-1.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';

class Pdf {
  static Future generateCreated(noOfCities) async {
    final pdf = Document();

    pdf.addPage(MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => [
              if (noOfCities == 1) pw.Text('data'),
              pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Expanded(
                        flex: 3,
                        child: pw.Padding(
                          padding: pw.EdgeInsets.all(20),
                          child: pw.Text(
                            '21 DAYS',
                            style: pw.Theme.of(context).header2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      pw.Container(
                        color: PdfColors.grey400,
                        child: pw.Padding(
                          padding: pw.EdgeInsets.all(20),
                          child: pw.Text(
                            'C/O:',
                            style: pw.Theme.of(context).header2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.all(20),
                        child: pw.Text(
                          'U-00014 MRS ADIL',
                          style: pw.Theme.of(context).header2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]),
                  ]),
              pw.Table(
                  // columnWidths: {
                  //   1: pw.FractionColumnWidth(.2),
                  //   // 2: pw.FractionColumnWidth(.2),
                  // },
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 120,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: pw.Text(
                                'MAKKAH HOTEL',
                                style: pw.Theme.of(context)
                                    .header2
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                        width: 180,
                        child: pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: pw.Text(
                            'AREEJ AL FALAH',
                            style: pw.Theme.of(context).header2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      pw.SizedBox(
                        width: 80,
                        // child: pw.Padding(
                        //   padding: pw.EdgeInsets.all(20),
                        child: pw.Text(
                          '100',
                          style: pw.Theme.of(context).header2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      pw.SizedBox(
                        width: 80,
                        child: pw.Text(
                          'Meal',
                          style: pw.Theme.of(context)
                              .header2
                              .copyWith(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      pw.SizedBox(
                        width: 80,
                        // child: pw.Padding(
                        //   padding: pw.EdgeInsets.all(20),
                        child: pw.Text(
                          'R/0',
                          style: pw.Theme.of(context).header2,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ])
                  ]),
              pw.Table(
                  // columnWidths: {
                  //   1: pw.FractionColumnWidth(.2),
                  //   // 2: pw.FractionColumnWidth(.2),
                  // },
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 120,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: pw.Text(
                                'MADINA HOTEL',
                                style: pw.Theme.of(context)
                                    .header2
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                        width: 180,
                        child: pw.Padding(
                          padding: pw.EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: pw.Text(
                            'BIR AL EIMAN MARKAZIA',
                            style: pw.Theme.of(context).header2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      pw.SizedBox(
                        width: 80,
                        // child: pw.Padding(
                        //   padding: pw.EdgeInsets.all(20),
                        child: pw.Text(
                          '300',
                          style: pw.Theme.of(context).header2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      pw.SizedBox(
                        width: 80,
                        child: pw.Text(
                          'Meal',
                          style: pw.Theme.of(context)
                              .header2
                              .copyWith(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      pw.SizedBox(
                        width: 80,
                        // child: pw.Padding(
                        //   padding: pw.EdgeInsets.all(20),
                        child: pw.Text(
                          'R/0',
                          style: pw.Theme.of(context).header2,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'HOTEL',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                              width: 130,
                              child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Text(
                                  'CHECK\nIN',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 150,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'CHECK\nOUT',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'ROOM',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'Rate',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'Nights',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'Riyal',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                              width: 150,
                              child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 12),
                                child: pw.Text(
                                  'Amount',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'MAK',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 130,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '06-SEP-23',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 150,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '12-SEP-23',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '2',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '270',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 150,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'MED',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 130,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '06-SEP-23',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 150,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '12-SEP-23',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '2',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '270',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 150,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'MAK',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 130,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '06-SEP-23',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 150,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '12-SEP-23',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '2',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '270',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 150,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 130,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'UMRAH VISA ',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 350,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'VISA WITH OR WITHOUT TRANPORT',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'Rate',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'Pax',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'Riyal',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 150,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'Amount',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 130,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'UMRAH VISA ',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                          width: 350,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'ONLY VISA/VISA WITH BUS',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '525',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 150,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 200,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'SAUDI AIRLINE',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 200,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'Hotal',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                          width: 77,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                        width: 200,
                      ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 200,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'Visa',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                          width: 77,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                        width: 200,
                      ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 200,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'Private Transport',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                          width: 77,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 200,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'SV  06SEP KHIJED 0335   0540 SV 26SEP JEDKHI  0210   0825',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 11),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 200,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 10),
                              child: pw.Text(
                                'Ziarat',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                          width: 77,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              //
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                        width: 370,
                      ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 170,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    'Total Adult\nTicket',
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 140,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '357829',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),

              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                        width: 370,
                      ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 170,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    'Total Adult\nProfit',
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 140,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '357829',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                        width: 370,
                      ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 170,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    'Total Child\nTicket',
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 140,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '357829',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                        width: 370,
                        child: pw.Text(
                          'SALE',
                          style: pw.Theme.of(context).header2.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 170,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    'Total Child\nProfit',
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 140,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '357829',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'ADULT',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3527283',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),

                      // pw.SizedBox(
                      //   width: 370,
                      // ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 170,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    'Total Infant\nTicket',
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 140,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '357829',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'CHILD',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3527283',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),

                      // pw.SizedBox(
                      //   width: 370,
                      // ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 170,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    'Total Infant\nProfit',
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 140,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '357829',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'INFANT',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 123,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3527283',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),

                      // pw.SizedBox(
                      //   width: 370,
                      // ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 170,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    'Total Infant\nVisa',
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '82',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 140,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '357829',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                        width: 200,
                      ),
                      pw.Container(
                          color: PdfColors.black,
                          child: pw.SizedBox(
                              width: 200,
                              child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    'Grand Total All Pax',
                                    style:
                                        pw.Theme.of(context).header2.copyWith(
                                              color: PdfColors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ))),
                      pw.Container(
                        color: PdfColors.black,
                        child: pw.SizedBox(
                            width: 77,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 5),
                                child: pw.Align(
                                  alignment: pw.Alignment.centerRight,
                                  child: pw.Text(
                                    '64532',
                                    style:
                                        pw.Theme.of(context).header2.copyWith(
                                              color: PdfColors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                    textAlign: TextAlign.center,
                                  ),
                                ))),
                      )
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 185,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'TOTAL',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                        color: PdfColors.grey400,
                        child: pw.SizedBox(
                            width: 185,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 12),
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ))),
                      ),

                      // pw.SizedBox(
                      //   width: 370,
                      // ),
                      pw.SizedBox(
                          width: 270,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Align(
                                alignment: pw.Alignment.centerLeft,
                                child: pw.Text(
                                  'Per Pax Hotel + Visa Cost',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.left,
                                )),
                          )),
                      pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '6',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 140,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '357829',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                        width: 200,
                        child: pw.Text(
                          'Cost',
                          style: pw.Theme.of(context).header2.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // pw.SizedBox(
                      //   width: 200,
                      // ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 200,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'Adult',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                          width: 77,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'ADULT',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3527283',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),

                      // pw.SizedBox(
                      //   width: 200,
                      // ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 200,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'Child',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                          width: 77,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'CHILD',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3527283',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),

                      // pw.SizedBox(
                      //   width: 200,
                      // ),
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 200,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Text(
                                'Infant',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.SizedBox(
                          width: 77,
                          child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 5),
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              'INFANT',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                          width: 66,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Text(
                              '3527283',
                              style: pw.Theme.of(context).header2.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      pw.SizedBox(
                        width: 277,
                      ),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'TOTAL',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                        color: PdfColors.grey400,
                        child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 12),
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      pw.SizedBox(
                        width: 277,
                      ),
                    ])
                  ]),
              pw.Table(
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      pw.Container(
                          color: PdfColors.grey400,
                          child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                              padding: pw.EdgeInsets.symmetric(vertical: 12),
                              child: pw.Text(
                                'PROFIT',
                                style: pw.Theme.of(context).header2.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      pw.Container(
                        color: PdfColors.grey400,
                        child: pw.SizedBox(
                            width: 100,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.symmetric(vertical: 12),
                                child: pw.Text(
                                  '64532',
                                  style: pw.Theme.of(context).header2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      pw.SizedBox(
                        width: 277,
                      ),
                    ])
                  ]),
            ])); // Page
    return saveDocument(name: 'excel_invoice.pdf', pdf: pdf);
  }

  static Future saveDocument({
    required String name,
    required Document pdf,
  }) async {
    final bytes = await pdf.save();
    final dir = await getApplicationCacheDirectory();
    final file = File('${dir.path}/$name');
    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(file) async {
    final url = file.path;
    await OpenFile.open(url);
  }
}
