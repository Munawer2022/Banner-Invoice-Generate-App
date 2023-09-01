import 'dart:io';
import 'package:banner_generate/excel_invoice/excel-invoice-1.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';

class Pdf {
  static Future generateCreated() async {
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
                            dayController.text + ' DAYS',
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
                          nameController.text,
                          style: pw.Theme.of(context).header2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]),
                  ]),
              pw.ListView.builder(
                  itemCount: selectedCities.length,
                  itemBuilder: ((context, index) {
                    return pw.Table(
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
                                      selectedCities[index].toString(),
                                      style: pw.Theme.of(context)
                                          .header2
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
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
                                  selectedHotels[index].toString(),
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
                                meterController[index].text.toString(),
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
                                selectedMeals[index].toString(),
                                style: pw.Theme.of(context).header2,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ])
                        ]);
                  })),

              // pw.Table(
              //     // columnWidths: {
              //     //   1: pw.FractionColumnWidth(.2),
              //     //   // 2: pw.FractionColumnWidth(.2),
              //     // },
              //     defaultVerticalAlignment:
              //         pw.TableCellVerticalAlignment.middle,
              //     border: pw.TableBorder.all(color: PdfColors.black),
              //     children: [
              //       pw.TableRow(children: [
              //         pw.Container(
              //             color: PdfColors.grey400,
              //             child: pw.SizedBox(
              //               width: 120,
              //               child: pw.Padding(
              //                 padding: pw.EdgeInsets.symmetric(
              //                     horizontal: 10, vertical: 5),
              //                 child: pw.Text(
              //                   'MADINA HOTEL',
              //                   style: pw.Theme.of(context)
              //                       .header2
              //                       .copyWith(fontWeight: FontWeight.bold),
              //                   textAlign: TextAlign.center,
              //                 ),
              //               ),
              //             )),
              //         pw.SizedBox(
              //           width: 180,
              //           child: pw.Padding(
              //             padding: pw.EdgeInsets.symmetric(
              //                 horizontal: 10, vertical: 5),
              //             child: pw.Text(
              //               'BIR AL EIMAN MARKAZIA',
              //               style: pw.Theme.of(context).header2,
              //               textAlign: TextAlign.center,
              //             ),
              //           ),
              //         ),
              //         pw.SizedBox(
              //           width: 80,
              //           // child: pw.Padding(
              //           //   padding: pw.EdgeInsets.all(20),
              //           child: pw.Text(
              //             '300',
              //             style: pw.Theme.of(context).header2,
              //             textAlign: TextAlign.center,
              //           ),
              //         ),
              //         pw.SizedBox(
              //           width: 80,
              //           child: pw.Text(
              //             'Meal',
              //             style: pw.Theme.of(context)
              //                 .header2
              //                 .copyWith(fontWeight: FontWeight.bold),
              //             textAlign: TextAlign.center,
              //           ),
              //         ),
              //         pw.SizedBox(
              //           width: 80,
              //           // child: pw.Padding(
              //           //   padding: pw.EdgeInsets.all(20),
              //           child: pw.Text(
              //             'R/0',
              //             style: pw.Theme.of(context).header2,
              //             textAlign: TextAlign.center,
              //           ),
              //         )
              //       ])
              //     ]),

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
              pw.ListView.builder(
                  itemCount: selectedHotels1.length,
                  itemBuilder: ((context, index) {
                    return pw.Table(
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
                                    selectedHotels1[index].toString(),
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            pw.SizedBox(
                                width: 130,
                                child: pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(vertical: 5),
                                  child: pw.Text(
                                    checkInController[index].text,
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            pw.SizedBox(
                                width: 150,
                                child: pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(vertical: 5),
                                  child: pw.Text(
                                    checkOutController[index].text,
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            pw.SizedBox(
                                width: 100,
                                child: pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(vertical: 5),
                                  child: pw.Text(
                                    selectedNoOfRooms[index].toString(),
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            pw.SizedBox(
                                width: 100,
                                child: pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(vertical: 5),
                                  child: pw.Text(
                                    rateController[index].text,
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            pw.SizedBox(
                                width: 100,
                                child: pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(vertical: 5),
                                  child: pw.Text(
                                    selectedNights[index].toString(),
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            pw.SizedBox(
                                width: 100,
                                child: pw.Padding(
                                  padding: pw.EdgeInsets.symmetric(vertical: 5),
                                  child: pw.Text(
                                    currencyController[index].text.toString(),
                                    style: pw.Theme.of(context)
                                        .header2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            pw.SizedBox(
                                width: 150,
                                child: pw.Padding(
                                    padding:
                                        pw.EdgeInsets.symmetric(vertical: 5),
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerRight,
                                      child: pw.Text(
                                        amountController[index].text.toString(),
                                        style: pw.Theme.of(context)
                                            .header2
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))),
                          ])
                        ]);
                  })),

              // pw.Table(
              //     defaultVerticalAlignment:
              //         pw.TableCellVerticalAlignment.middle,
              //     border: pw.TableBorder.all(color: PdfColors.black),
              //     children: [
              //       pw.TableRow(children: [
              //         pw.SizedBox(
              //             width: 100,
              //             child: pw.Padding(
              //               padding: pw.EdgeInsets.symmetric(vertical: 5),
              //               child: pw.Text(
              //                 'MED',
              //                 style: pw.Theme.of(context).header2.copyWith(
              //                     fontWeight: FontWeight.bold, fontSize: 13),
              //                 textAlign: TextAlign.center,
              //               ),
              //             )),
              //         pw.SizedBox(
              //             width: 130,
              //             child: pw.Padding(
              //               padding: pw.EdgeInsets.symmetric(vertical: 5),
              //               child: pw.Text(
              //                 '06-SEP-23',
              //                 style: pw.Theme.of(context).header2.copyWith(
              //                     fontWeight: FontWeight.bold, fontSize: 13),
              //                 textAlign: TextAlign.center,
              //               ),
              //             )),
              //         pw.SizedBox(
              //             width: 150,
              //             child: pw.Padding(
              //               padding: pw.EdgeInsets.symmetric(vertical: 5),
              //               child: pw.Text(
              //                 '12-SEP-23',
              //                 style: pw.Theme.of(context).header2.copyWith(
              //                     fontWeight: FontWeight.bold, fontSize: 13),
              //                 textAlign: TextAlign.center,
              //               ),
              //             )),
              //         pw.SizedBox(
              //             width: 100,
              //             child: pw.Padding(
              //               padding: pw.EdgeInsets.symmetric(vertical: 5),
              //               child: pw.Text(
              //                 '2',
              //                 style: pw.Theme.of(context).header2.copyWith(
              //                     fontWeight: FontWeight.bold, fontSize: 13),
              //                 textAlign: TextAlign.center,
              //               ),
              //             )),
              //         pw.SizedBox(
              //             width: 100,
              //             child: pw.Padding(
              //               padding: pw.EdgeInsets.symmetric(vertical: 5),
              //               child: pw.Text(
              //                 '270',
              //                 style: pw.Theme.of(context).header2.copyWith(
              //                     fontWeight: FontWeight.bold, fontSize: 13),
              //                 textAlign: TextAlign.center,
              //               ),
              //             )),
              //         pw.SizedBox(
              //             width: 100,
              //             child: pw.Padding(
              //               padding: pw.EdgeInsets.symmetric(vertical: 5),
              //               child: pw.Text(
              //                 '6',
              //                 style: pw.Theme.of(context).header2.copyWith(
              //                     fontWeight: FontWeight.bold, fontSize: 13),
              //                 textAlign: TextAlign.center,
              //               ),
              //             )),
              //         pw.SizedBox(
              //             width: 100,
              //             child: pw.Padding(
              //               padding: pw.EdgeInsets.symmetric(vertical: 5),
              //               child: pw.Text(
              //                 '82',
              //                 style: pw.Theme.of(context).header2.copyWith(
              //                     fontWeight: FontWeight.bold, fontSize: 13),
              //                 textAlign: TextAlign.center,
              //               ),
              //             )),
              //         pw.SizedBox(
              //             width: 150,
              //             child: pw.Padding(
              //                 padding: pw.EdgeInsets.symmetric(vertical: 5),
              //                 child: pw.Align(
              //                   alignment: pw.Alignment.centerRight,
              //                   child: pw.Text(
              //                     '64532',
              //                     style: pw.Theme.of(context).header2.copyWith(
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 13),
              //                     textAlign: TextAlign.center,
              //                   ),
              //                 ))),
              //       ])
              //     ]),

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
                                visaNameController.text,
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
                                visaNameController.text,
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
                              visaIncludesController.text,
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
                              visaRateController.text,
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
                              visaPaxController.text,
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
                              visaRiyalController.text,
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
                                  visaAmountController.text,
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
                                airlineNameController.text,
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
                                'Hotel',
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
                                  hotelTotalController.text,
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
                                  visaAmountController.text,
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
                                  transportTotalController.text,
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
                              allFlights,
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
                                  ziaratTotalController.text,
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
                              totalAdultTicketController.text,
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
                              adultsController.text,
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
                                  totalAdultTicketController1.text,
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
                              totalAdultProfitController.text,
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
                              adultsController.text,
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
                                  totalAdultProfitController1.text,
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
                              totalChildTicketController.text,
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
                              childsController.text,
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
                                  totalChildTicketController.text,
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
                              totalChildProfitController.text,
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
                              childsController.text,
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
                                  totalChildProfitController1.text,
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
                              adultsController.text,
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
                              ((int.parse(perCostController.text) +
                                          int.parse(
                                              totalAdultTicketController.text) +
                                          int.parse(totalAdultProfitController
                                              .text)) *
                                      int.parse(adultsController.text))
                                  .toString(),
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
                              totalInfantTicketController.text,
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
                              infantsController.text,
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
                                  totalInfantTicketController1.text,
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
                              childsController.text,
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
                              ((int.parse(perCostController.text) +
                                          int.parse(
                                              totalChildTicketController.text) +
                                          int.parse(totalChildProfitController
                                              .text)) *
                                      int.parse(childsController.text))
                                  .toString(),
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
                              totalInfantProfitController.text,
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
                              infantsController.text,
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
                                  totalInfantProfitController1.text,
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
                              infantsController.text,
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
                              ((((int.parse(totalInfantVisaController.text) +
                                          int.parse(totalInfantTicketController
                                              .text) +
                                          int.parse(totalInfantProfitController
                                              .text))) *
                                      int.parse(infantsController.text)))
                                  .toString(),
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
                              totalInfantVisaController.text,
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
                              infantsController.text,
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
                                  totalInfantVisaController1.text,
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
                                    grandTotalController.text,
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
                                  (((int.parse(perCostController.text) +
                                                  int.parse(totalAdultTicketController
                                                      .text) +
                                                  int.parse(totalAdultProfitController
                                                      .text)) *
                                              int.parse(
                                                  adultsController.text)) +
                                          ((int.parse(perCostController.text) +
                                                  int.parse(totalChildTicketController
                                                      .text) +
                                                  int.parse(totalChildProfitController
                                                      .text)) *
                                              int.parse(
                                                  childsController.text)) +
                                          ((int.parse(perCostController.text) +
                                                  int.parse(totalInfantTicketController.text) +
                                                  int.parse(totalInfantProfitController.text)) *
                                              int.parse(infantsController.text)))
                                      .toString(),
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
                              (int.parse(adultsController.text) +
                                      int.parse(childsController.text) +
                                      int.parse(infantsController.text))
                                  .toString(),
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
                                  perCostController.text,
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
                                  (int.parse(perCostController.text) +
                                          int.parse(
                                              totalAdultTicketController.text) +
                                          int.parse(
                                              totalAdultProfitController.text))
                                      .toStringAsFixed(0),
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
                              adultsController.text,
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
                              (((int.parse(perCostController.text) +
                                              int.parse(
                                                  totalAdultTicketController
                                                      .text) +
                                              int.parse(
                                                  totalAdultProfitController
                                                      .text)) *
                                          int.parse(adultsController.text)) -
                                      int.parse(
                                          totalAdultProfitController1.text))
                                  .toString(),
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
                                  ((int.parse(perCostController.text) +
                                          int.parse(
                                              totalChildTicketController.text) +
                                          int.parse(
                                              totalChildProfitController.text)))
                                      .toString(),
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
                              childsController.text,
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
                              (((int.parse(perCostController.text) +
                                              int.parse(
                                                  totalChildTicketController
                                                      .text) +
                                              int.parse(
                                                  totalChildProfitController
                                                      .text)) *
                                          int.parse(childsController.text)) -
                                      int.parse(
                                          totalChildProfitController1.text))
                                  .toString(),
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
                                  ((int.parse(totalInfantVisaController.text) +
                                          int.parse(totalInfantTicketController
                                              .text) +
                                          int.parse(totalInfantProfitController
                                              .text)))
                                      .toString(),
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
                              infantsController.text,
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
                              ((((int.parse(totalInfantVisaController.text) +
                                              int.parse(
                                                  totalInfantTicketController
                                                      .text) +
                                              int.parse(
                                                  totalInfantProfitController
                                                      .text))) *
                                          int.parse(infantsController.text)) -
                                      int.parse(
                                          totalInfantProfitController1.text))
                                  .toString(),
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
                                  ((((int.parse(perCostController.text) + int.parse(totalAdultTicketController.text) + int.parse(totalAdultProfitController.text)) * int.parse(adultsController.text)) -
                                              int.parse(
                                                  totalAdultProfitController1
                                                      .text)) +
                                          ((int.parse(perCostController.text) +
                                                  int.parse(
                                                      totalChildTicketController
                                                          .text) +
                                                  int.parse(
                                                      totalChildProfitController
                                                          .text)) *
                                              int.parse(
                                                  childsController.text)) -
                                          int.parse(totalChildProfitController1
                                              .text) +
                                          (((int.parse(totalInfantVisaController.text) +
                                                  int.parse(totalInfantTicketController.text) +
                                                  int.parse(totalInfantProfitController.text))) *
                                              int.parse(infantsController.text)) -
                                          int.parse(totalInfantProfitController1.text))
                                      .toString(),
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
                                  ((((int.parse(perCostController.text) + int.parse(totalAdultTicketController.text) + int.parse(totalAdultProfitController.text)) *
                                                  int.parse(
                                                      adultsController.text)) +
                                              ((int.parse(perCostController.text) + int.parse(totalChildTicketController.text) + int.parse(totalChildProfitController.text)) *
                                                  int.parse(
                                                      childsController.text)) +
                                              ((int.parse(perCostController.text) +
                                                      int.parse(totalInfantTicketController
                                                          .text) +
                                                      int.parse(totalInfantProfitController
                                                          .text)) *
                                                  int.parse(
                                                      infantsController.text)) -
                                              (((int.parse(perCostController.text) +
                                                          int.parse(totalAdultTicketController.text) +
                                                          int.parse(totalAdultProfitController.text)) *
                                                      int.parse(adultsController.text)) -
                                                  int.parse(totalAdultProfitController1.text)) +
                                              ((int.parse(perCostController.text) + int.parse(totalChildTicketController.text) + int.parse(totalChildProfitController.text)) * int.parse(childsController.text)) -
                                              int.parse(totalChildProfitController1.text) +
                                              (((int.parse(totalInfantVisaController.text) + int.parse(totalInfantTicketController.text) + int.parse(totalInfantProfitController.text))) * int.parse(infantsController.text)) -
                                              int.parse(totalInfantProfitController1.text)) -
                                          ((((int.parse(perCostController.text) + int.parse(totalAdultTicketController.text) + int.parse(totalAdultProfitController.text)) * int.parse(adultsController.text)) - int.parse(totalAdultProfitController1.text)) + ((int.parse(perCostController.text) + int.parse(totalChildTicketController.text) + int.parse(totalChildProfitController.text)) * int.parse(childsController.text)) - int.parse(totalChildProfitController1.text) + (((int.parse(totalInfantVisaController.text) + int.parse(totalInfantTicketController.text) + int.parse(totalInfantProfitController.text))) * int.parse(infantsController.text)) - int.parse(totalInfantProfitController1.text)))
                                      .toString(),
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
