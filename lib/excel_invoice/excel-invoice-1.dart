import 'dart:collection';
import 'dart:convert';
import 'dart:io';
// import 'package:accordion/controllers.dart';
import 'package:banner_generate/company_detail.dart';
import 'package:banner_generate/config/palette.dart';
import 'package:banner_generate/widgets/custom-text-field-hint.dart';
import 'package:dropdown_search2/dropdown_search2.dart';
import 'package:flutter/material.dart';
// import 'package:accordion/accordion.dart';
import 'package:intl/intl.dart';
import 'package:add_comma/add_comma.dart';
import 'pdf.dart';

class ExcelInvoice1 extends StatefulWidget {
  ExcelInvoice1({Key? key}) : super(key: key);
  @override
  State<ExcelInvoice1> createState() => _ExcelInvoice1State();
}

TextEditingController dayController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController airlineNameController = new TextEditingController();
List<TextEditingController> airlineController = [];
List<AirlineWidget> airlineWidget = [];
int noOfAirlines = 0;
String allFlights = "";
//cityWidget Variables

List<CityWidget> cityWidget = [];
List<TextEditingController> meterController = [];
final selectedCities = SplayTreeMap<int, String>();
final selectedHotels = SplayTreeMap<int, String>();
final selectedMeals = SplayTreeMap<int, String>();
final selectedMeters = SplayTreeMap<int, String>();
int noOfCities = 0;

//cityWidget Variables

//hotels deatils variables
List<HotelsDetailsWidget> hotelsDetailsWidget = [];
List<TextEditingController> checkInController = [];
List<TextEditingController> checkOutController = [];
List<TextEditingController> currencyController = [];
List<TextEditingController> amountController = [];
List<TextEditingController> rateController = [];
final selectedHotels1 = SplayTreeMap<int, String>();
final selectedCheckIns = SplayTreeMap<int, String>();
final selectedCheckOuts = SplayTreeMap<int, String>();
final selectedNoOfRooms = SplayTreeMap<int, String>();
final selectedNights = SplayTreeMap<int, String>();
final selectedCurrencyPrice = SplayTreeMap<int, String>();
final selectedAmount = SplayTreeMap<int, String>();
final selectedRates = SplayTreeMap<int, String>();
int noOfHotels = 0;
//hotels deatils variables

//visa details variables
TextEditingController visaNameController = new TextEditingController();
TextEditingController visaIncludesController = new TextEditingController();
TextEditingController visaRateController = new TextEditingController();
TextEditingController visaPaxController = new TextEditingController();
TextEditingController visaRiyalController = new TextEditingController();
TextEditingController visaAmountController = new TextEditingController();
TextEditingController hotelTotalController = new TextEditingController();
TextEditingController ziaratTotalController = new TextEditingController();
TextEditingController transportTotalController = new TextEditingController();
TextEditingController adultsController = new TextEditingController();
TextEditingController childsController = new TextEditingController();
TextEditingController infantsController = new TextEditingController();
TextEditingController totalAdultTicketController = new TextEditingController();
TextEditingController totalAdultTicketController1 = new TextEditingController();
TextEditingController totalAdultProfitController = new TextEditingController();
TextEditingController totalAdultProfitController1 = new TextEditingController();
TextEditingController totalChildTicketController = new TextEditingController();
TextEditingController totalChildTicketController1 = new TextEditingController();
TextEditingController totalChildProfitController = new TextEditingController();
TextEditingController totalChildProfitController1 = new TextEditingController();
TextEditingController totalInfantTicketController = new TextEditingController();
TextEditingController totalInfantTicketController1 =
    new TextEditingController();
TextEditingController totalInfantProfitController = new TextEditingController();
TextEditingController totalInfantProfitController1 =
    new TextEditingController();
TextEditingController totalInfantVisaController = new TextEditingController();
TextEditingController totalInfantVisaController1 = new TextEditingController();
TextEditingController grandTotalController = new TextEditingController();
TextEditingController perCostController = new TextEditingController();
//visa details variables

final putComma = addCommas(
  separator: ',',
);

void hotelTotalCalculation(int indexX) {
  int total = int.parse(selectedNoOfRooms[indexX].toString()) *
      int.parse(selectedNights[indexX].toString()) *
      int.parse(rateController[indexX].text.toString()) *
      int.parse(currencyController[indexX].text.toString());

  amountController[indexX].text = putComma(total).toString();
  hotelTotalCalculationSum();
}

void hotelTotalCalculationSum() {
  int total = 0;
  for (int i = 0; i < amountController.length; i++) {
    total += int.parse(amountController[i].text.toString().replaceAll(",", ""));
    print(amountController[i].text);
  }
  print(total);

  hotelTotalController.text = putComma(total).toString();
}

void visaTotalCalculation() {
  int total = int.parse(visaRateController.text.toString()) *
      int.parse(visaPaxController.text.toString()) *
      int.parse(visaRiyalController.text.toString());
  visaAmountController.text = putComma(total).toString();
}

void totalAdultCalculation1() {
  int total = int.parse(adultsController.text) *
      int.parse(totalAdultTicketController.text);
  totalAdultTicketController1.text = putComma(total).toString();
}

void totalAdultCalculation2() {
  int total = int.parse(adultsController.text) *
      int.parse(totalAdultProfitController.text);
  totalAdultProfitController1.text = putComma(total).toString();
}

void totalChildCalculations1() {
  int total = int.parse(childsController.text) *
      int.parse(totalChildTicketController.text);
  totalChildTicketController1.text = putComma(total).toString();
}

void totalChildCalculations2() {
  int total = int.parse(childsController.text) *
      int.parse(totalChildProfitController.text);
  totalChildProfitController1.text = putComma(total).toString();
}

void totalInfantCalculation1() {
  int total = int.parse(infantsController.text) *
      int.parse(totalInfantTicketController.text);
  totalInfantTicketController1.text = putComma(total).toString();
}

void totalInfantCalculation2() {
  int total = int.parse(infantsController.text) *
      int.parse(totalInfantProfitController.text);
  totalInfantProfitController1.text = putComma(total).toString();
}

void totalInfantCalculation3() {
  int total = int.parse(infantsController.text) *
      int.parse(totalInfantVisaController.text);
  totalInfantVisaController1.text = putComma(total).toString();
}

void perPaxCalculation() {
  double total = (int.parse(hotelTotalController.text.replaceAll(",", "")) +
          int.parse(transportTotalController.text.replaceAll(",", "")) +
          int.parse(ziaratTotalController.text.replaceAll(",", "")) +
          int.parse(visaAmountController.text.replaceAll(",", ""))) /
      (int.parse(adultsController.text.replaceAll(",", "")) +
          int.parse(childsController.text.replaceAll(",", "")));
  int cal = total.toInt();

  perCostController.text = putComma(cal).toString();
}

void grandTotalCalculation() {
  int total = int.parse(hotelTotalController.text.replaceAll(",", "")) +
      int.parse(transportTotalController.text.replaceAll(",", "")) +
      int.parse(ziaratTotalController.text.replaceAll(",", "")) +
      int.parse(totalAdultTicketController1.text.replaceAll(",", "")) +
      int.parse(totalAdultProfitController1.text.replaceAll(",", "")) +
      int.parse(totalChildTicketController1.text.replaceAll(",", "")) +
      int.parse(totalChildProfitController1.text.replaceAll(",", "")) +
      int.parse(totalInfantTicketController1.text.replaceAll(",", "")) +
      int.parse(totalInfantProfitController1.text.replaceAll(",", "")) +
      int.parse(totalInfantVisaController1.text.replaceAll(",", "")) +
      int.parse(visaAmountController.text.replaceAll(",", ""));
  grandTotalController.text = putComma(total).toString();
}

class _ExcelInvoice1State extends State<ExcelInvoice1> {
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum = "Lorem ipsum is typically";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double bodyWidth = double.infinity;
    double bodyHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   automaticallyImplyLeading: true,
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        // ),
        body: SingleChildScrollView(
      child: Container(
        color: Palette.primaryColor.withOpacity(0.1),
        width: bodyWidth,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomTextFieldHint(
              label: "No of Days",
              controller: dayController,
              placeholder: "Eg: 21",
              isValid: true,
              errorText: "Password must upto 6 characters",
              hint: "",
              textType: TextInputType.number,
              onChanged: (value) {},
            ),
            CustomTextFieldHint(
              label: "C/O",
              controller: nameController,
              placeholder: "Eg: Person name",
              isValid: true,
              errorText: "Password must upto 6 characters",
              hint: "",
              onChanged: (value) {},
            ),
            CustomTextFieldHint(
              label: "Airline name",
              controller: airlineNameController,
              placeholder: "Eg: Saudi Airline",
              isValid: true,
              errorText: "Password must upto 6 characters",
              hint: "",
              onChanged: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: bodyWidth,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    child: InkWell(
                      onTap: () {
                        airlineWidget.add(new AirlineWidget(
                          index: noOfAirlines,
                        ));

                        airlineController.add(new TextEditingController());

                        // meterController.add(new TextEditingController());

                        setState(() {});
                        noOfAirlines++;
                      },
                      child: Icon(
                        Icons.add,
                        size: 20.0,
                        color: Colors.brown[900],
                      ),
                    ),
                  ),
                  Text(
                    "Airline details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: airlineWidget.length,
                itemBuilder: (_, index) => airlineWidget[index]),

            //cities and hotels
            SizedBox(
              height: 20,
            ),
            Container(
              width: bodyWidth,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    child: InkWell(
                      onTap: () {
                        cityWidget.add(new CityWidget(
                          index: noOfCities,
                        ));

                        meterController.add(new TextEditingController());

                        setState(() {});
                        noOfCities++;
                        // Pdf(noOfCities);
                      },
                      child: Icon(
                        Icons.add,
                        size: 20.0,
                        color: Colors.brown[900],
                      ),
                    ),
                  ),
                  Text(
                    "Cities and hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cityWidget.length,
                itemBuilder: (_, index) => cityWidget[index]),
            //cities and hotels
            //hotels details
            SizedBox(
              height: 20,
            ),
            Container(
              width: bodyWidth,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    child: InkWell(
                      onTap: () {
                        hotelsDetailsWidget.add(new HotelsDetailsWidget(
                          index: noOfHotels,
                        ));

                        checkInController.add(new TextEditingController());
                        checkOutController.add(new TextEditingController());
                        currencyController.add(new TextEditingController());
                        amountController.add(new TextEditingController());
                        rateController.add(new TextEditingController());

                        // meterController.add(new TextEditingController());

                        setState(() {});
                        noOfHotels++;
                      },
                      child: Icon(
                        Icons.add,
                        size: 20.0,
                        color: Colors.brown[900],
                      ),
                    ),
                  ),
                  Text(
                    "Hotels details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: hotelsDetailsWidget.length,
                itemBuilder: (_, index) => hotelsDetailsWidget[index]),
            //hotels details
            SizedBox(
              height: 20,
            ),
            CustomTextFieldHint(
              label: "Visa name",
              controller: visaNameController,
              placeholder: "Eg: Umrah visa",
              isValid: true,
              errorText: "Password must upto 6 characters",
              hint: "",
              textType: TextInputType.text,
              onChanged: (value) {},
            ),
            CustomTextFieldHint(
              label: "Visa with or without transport",
              controller: visaIncludesController,
              placeholder: "Eg: Travel included",
              isValid: true,
              errorText: "Password must upto 6 characters",
              hint: "",
              textType: TextInputType.text,
              onChanged: (value) {},
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Visa rate",
                    controller: visaRateController,
                    placeholder: "Eg: 525",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      visaTotalCalculation();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Visa Pax",
                    controller: visaPaxController,
                    placeholder: "Eg: 6",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      visaTotalCalculation();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Visa price",
                    controller: visaRiyalController,
                    placeholder: "Eg: 525",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      visaTotalCalculation();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),

            InkWell(
              onTap: () {
                // int total = int.parse(visaRateController.text.toString()) *
                //     int.parse(visaPaxController.text.toString()) *
                //     int.parse(visaRiyalController.text.toString());
                // visaAmountController.text = total.toString();
              },
              child: CustomTextFieldHint(
                label: "Visa total price",
                controller: visaAmountController,
                placeholder: "Eg: 2,500",
                isValid: true,
                errorText: "Password must upto 6 characters",
                hint: "",
                readOnly: true,
                textType: TextInputType.number,
                onChanged: (value) {
                  perPaxCalculation();
                  grandTotalCalculation();
                },
              ),
            ),
            InkWell(
              onTap: () {
                // int total = 0;
                // for (int i = 0; i < amountController.length; i++) {
                //   total += int.parse(amountController[i].text.toString());
                // }

                // hotelTotalController.text = total.toString();
              },
              child: CustomTextFieldHint(
                label: "Hotel total price",
                controller: hotelTotalController,
                placeholder: "Eg: 2,500",
                isValid: true,
                errorText: "Password must upto 6 characters",
                hint: "",
                readOnly: true,
                textType: TextInputType.number,
                onChanged: (value) {
                  perPaxCalculation();
                  grandTotalCalculation();
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Ziarat total price",
                    controller: ziaratTotalController,
                    placeholder: "Eg: 2,500",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      perPaxCalculation();
                      grandTotalCalculation();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Private transport total price",
                    controller: transportTotalController,
                    placeholder: "Eg: 2,500",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      perPaxCalculation();
                      grandTotalCalculation();
                    },
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldHint(
                    label: "No of adults",
                    controller: adultsController,
                    placeholder: "Eg: 5",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalAdultCalculation1();
                      totalAdultCalculation2();
                      perPaxCalculation();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "No of childs",
                    controller: childsController,
                    placeholder: "Eg: 5",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalChildCalculations1();
                      totalChildCalculations2();
                      perPaxCalculation();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "No of infants",
                    controller: infantsController,
                    placeholder: "Eg: 5",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalInfantCalculation1();
                      totalInfantCalculation2();
                      totalInfantCalculation3();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Adult ticket price",
                    controller: totalAdultTicketController,
                    placeholder: "Eg: 5,000",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalAdultCalculation1();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Adult profit",
                    controller: totalAdultProfitController,
                    placeholder: "Eg: 2,500",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalAdultCalculation2();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      print(0);
                      // int total = int.parse(adultsController.text) *
                      //     int.parse(totalAdultTicketController.text);
                      // totalAdultTicketController1.text = total.toString();
                    },
                    child: CustomTextFieldHint(
                      label: "Total adult ticket price",
                      controller: totalAdultTicketController1,
                      placeholder: "Eg: 2,500",
                      isValid: true,
                      errorText: "Password must upto 6 characters",
                      hint: "",
                      readOnly: true,
                      textType: TextInputType.number,
                      onChanged: (value) {
                        grandTotalCalculation();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // int total = int.parse(adultsController.text) *
                      //     int.parse(totalAdultProfitController.text);
                      // totalAdultProfitController1.text = total.toString();
                    },
                    child: CustomTextFieldHint(
                      label: "Total adult profit",
                      controller: totalAdultProfitController1,
                      placeholder: "Eg: 2,500",
                      isValid: true,
                      errorText: "Password must upto 6 characters",
                      hint: "",
                      readOnly: true,
                      textType: TextInputType.number,
                      onChanged: (value) {
                        grandTotalCalculation();
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Child ticket price",
                    controller: totalChildTicketController,
                    placeholder: "Eg: 5,000",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalChildCalculations1();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Child profit",
                    controller: totalChildProfitController,
                    placeholder: "Eg: 2,500",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalChildCalculations2();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: CustomTextFieldHint(
                      label: "Total child ticket price",
                      controller: totalChildTicketController1,
                      placeholder: "Eg: 2,500",
                      isValid: true,
                      errorText: "Password must upto 6 characters",
                      hint: "",
                      readOnly: true,
                      textType: TextInputType.number,
                      onChanged: (value) {
                        grandTotalCalculation();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: CustomTextFieldHint(
                      label: "Total child profit",
                      controller: totalChildProfitController1,
                      placeholder: "Eg: 2,500",
                      isValid: true,
                      errorText: "Password must upto 6 characters",
                      hint: "",
                      readOnly: true,
                      textType: TextInputType.number,
                      onChanged: (value) {
                        grandTotalCalculation();
                      },
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Infant ticket price",
                    controller: totalInfantTicketController,
                    placeholder: "Eg: 5,000",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalInfantCalculation1();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Infant profit",
                    controller: totalInfantProfitController,
                    placeholder: "Eg: 2,500",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalInfantCalculation2();
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextFieldHint(
                    label: "Infant visa",
                    controller: totalInfantVisaController,
                    placeholder: "Eg: 2,500",
                    isValid: true,
                    errorText: "Password must upto 6 characters",
                    hint: "",
                    textType: TextInputType.number,
                    onChanged: (value) {
                      totalInfantCalculation3();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // int total = int.parse(infantsController.text) *
                      //     int.parse(totalInfantTicketController.text);
                      // totalInfantTicketController1.text = total.toString();
                    },
                    child: CustomTextFieldHint(
                      label: "Total infant ticket price",
                      controller: totalInfantTicketController1,
                      placeholder: "Eg: 2,500",
                      isValid: true,
                      errorText: "Password must upto 6 characters",
                      hint: "",
                      readOnly: true,
                      textType: TextInputType.number,
                      onChanged: (value) {
                        grandTotalCalculation();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // int total = int.parse(infantsController.text) *
                      //     int.parse(totalInfantProfitController.text);
                      // totalInfantProfitController1.text = total.toString();
                    },
                    child: CustomTextFieldHint(
                      label: "Total infant profit",
                      controller: totalInfantProfitController1,
                      placeholder: "Eg: 2,500",
                      isValid: true,
                      errorText: "Password must upto 6 characters",
                      hint: "",
                      readOnly: true,
                      textType: TextInputType.number,
                      onChanged: (value) {
                        grandTotalCalculation();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // int total = int.parse(infantsController.text) *
                      //     int.parse(totalInfantVisaController.text);
                      // totalInfantVisaController1.text = total.toString();
                    },
                    child: CustomTextFieldHint(
                      label: "Total infant visa price",
                      controller: totalInfantVisaController1,
                      placeholder: "Eg: 2,500",
                      isValid: true,
                      errorText: "Password must upto 6 characters",
                      hint: "",
                      readOnly: true,
                      textType: TextInputType.number,
                      onChanged: (value) {
                        grandTotalCalculation();
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: bodyWidth,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    child: InkWell(
                      onTap: () {
                        int total = int.parse(
                                hotelTotalController.text.replaceAll(",", "")) +
                            int.parse(transportTotalController.text
                                .replaceAll(",", "")) +
                            int.parse(ziaratTotalController.text
                                .replaceAll(",", "")) +
                            int.parse(totalAdultTicketController1.text
                                .replaceAll(",", "")) +
                            int.parse(totalAdultProfitController1.text
                                .replaceAll(",", "")) +
                            int.parse(totalChildTicketController1.text
                                .replaceAll(",", "")) +
                            int.parse(totalChildProfitController1.text.replaceAll(",", "")) +
                            int.parse(totalInfantTicketController1.text.replaceAll(",", "")) +
                            int.parse(totalInfantProfitController1.text.replaceAll(",", "")) +
                            int.parse(totalInfantVisaController1.text.replaceAll(",", "")) +
                            int.parse(visaAmountController.text.replaceAll(",", ""));
                        grandTotalController.text = putComma(total).toString();
                      },
                      child: Icon(
                        Icons.price_change,
                        size: 20.0,
                        color: Colors.brown[900],
                      ),
                    ),
                  ),
                  Text(
                    "Grand Total All Pax",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                // int total = int.parse(
                //         hotelTotalController.text.replaceAll(",", "")) +
                //     int.parse(
                //         transportTotalController.text.replaceAll(",", "")) +
                //     int.parse(ziaratTotalController.text.replaceAll(",", "")) +
                //     int.parse(
                //         totalAdultTicketController1.text.replaceAll(",", "")) +
                //     int.parse(
                //         totalAdultProfitController1.text.replaceAll(",", "")) +
                //     int.parse(
                //         totalChildTicketController1.text.replaceAll(",", "")) +
                //     int.parse(
                //         totalChildProfitController1.text.replaceAll(",", "")) +
                //     int.parse(
                //         totalInfantTicketController1.text.replaceAll(",", "")) +
                //     int.parse(
                //         totalInfantProfitController1.text.replaceAll(",", "")) +
                //     int.parse(
                //         totalInfantVisaController1.text.replaceAll(",", "")) +
                //     int.parse(visaAmountController.text.replaceAll(",", ""));
                // grandTotalController.text = putComma(total).toString();
              },
              child: CustomTextFieldHint(
                label: "Total",
                controller: grandTotalController,
                placeholder: "Eg: 2,500",
                isValid: true,
                errorText: "Password must upto 6 characters",
                hint: "",
                enabled: false,
                textType: TextInputType.number,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: bodyWidth,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.price_change,
                        size: 20.0,
                        color: Colors.brown[900],
                      ),
                    ),
                  ),
                  Text(
                    "Per Pax Hotel + Visa Cost",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                // double total = (int.parse(
                //             hotelTotalController.text.replaceAll(",", "")) +
                //         int.parse(
                //             transportTotalController.text.replaceAll(",", "")) +
                //         int.parse(
                //             ziaratTotalController.text.replaceAll(",", "")) +
                //         int.parse(
                //             visaAmountController.text.replaceAll(",", ""))) /
                //     (int.parse(adultsController.text.replaceAll(",", "")) +
                //         int.parse(childsController.text.replaceAll(",", "")));
                // int cal = total.toInt();

                // perCostController.text = putComma(cal).toString();
              },
              child: CustomTextFieldHint(
                label: "Per Pax Hotel + Visa Cost",
                controller: perCostController,
                placeholder: "Eg: 2,500",
                isValid: true,
                errorText: "Password must upto 6 characters",
                hint: "",
                enabled: false,
                textType: TextInputType.number,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 100,
                  height: 60,
                  color: Palette.primaryColor,
                  disabledColor: Colors.grey,
                  onPressed: () {
                    // CompanyDetail();

                    // for (int i = 0; i < airlineController.length; i++) {
                    //   allFlights += airlineController[i].text + "\n";
                    // }
                    // final pdfFile = await Pdf.generateCreated();

                    // await Pdf.openFile(pdfFile).then((value) {
                    //   print('opendone');
                    // }).onError((error, stackTrace) {
                    //   print('error ${error}');
                    // });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Quotation",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                MaterialButton(
                  minWidth: 100,
                  height: 60,
                  color: Palette.primaryColor,
                  disabledColor: Colors.grey,
                  onPressed: () async {
                    for (int i = 0; i < airlineController.length; i++) {
                      allFlights += airlineController[i].text + "\n";
                    }
                    final pdfFile = await Pdf.generateCreated();

                    await Pdf.openFile(pdfFile).then((value) {
                      print('opendone');
                    }).onError((error, stackTrace) {
                      print('error ${error}');
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Invoice",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    ));
  }
}

class CityWidget extends StatelessWidget {
  int index;
  CityWidget({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DropdownSearch<String>(
                  showSearchBox: true,
                  mode: Mode.MENU,
                  items: ["Makkah", "Madina"],
                  label: "City " + (index + 1).toString(),
                  hint: "Select city " + index.toString(),
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (newValue) {
                    print(selectedCities.length);
                    selectedCities[index] = newValue!;
                    print(selectedCities[0]);
                  },
                  selectedItem: selectedCities.length == 0
                      ? "Select city " + (index + 1).toString()
                      : selectedCities[index]),
            ),
            SizedBox(width: 15),
            Expanded(
              child: DropdownSearch<String>(
                  showSearchBox: true,
                  mode: Mode.MENU,
                  items: ["Hotel1", "Hotel2"],
                  label: "Hotel " + (index + 1).toString(),
                  hint: "Select hotel " + index.toString(),
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (newValue) {
                    selectedHotels[index] = newValue!;
                  },
                  selectedItem: selectedHotels.length == 0
                      ? "Select hotel " + (index + 1).toString()
                      : selectedHotels[index]),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomTextFieldHint(
                label: "Enter meters",
                controller: meterController[index],
                placeholder: "Eg: 100",
                isValid: true,
                errorText: "Password must upto 6 characters",
                hint: "",
                textType: TextInputType.number,
                onChanged: (value) {},
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: DropdownSearch<String>(
                  showSearchBox: true,
                  mode: Mode.MENU,
                  items: ["R/O", "BB"],
                  label: "Hotel " + (index + 1).toString() + " meal",
                  hint: "Select meal " + index.toString(),
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (newValue) {
                    selectedMeals[index] = newValue!;
                  },
                  selectedItem: selectedMeals.length == 0
                      ? "Select meal " + (index + 1).toString()
                      : selectedMeals[index]),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 2,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class HotelsDetailsWidget extends StatelessWidget {
  int index;
  HotelsDetailsWidget({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showPicker(TextEditingController controller) async {
      DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1950),
          //DateTime.now() - not to allow to choose before today.
          lastDate: DateTime(2100));

      if (pickedDate != null) {
        print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
        String formattedDate = DateFormat('dd-MM-yy').format(pickedDate);
        print(formattedDate);
        controller.text = formattedDate
            .toString(); //formatted date output using intl package =>  2021-03-16
      }
    }

    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DropdownSearch<String>(
                  showSearchBox: true,
                  mode: Mode.MENU,
                  items: ["MAK", "MED"],
                  label: "Hotel " + (index + 1).toString(),
                  hint: "Select hotel " + index.toString(),
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (newValue) {
                    selectedHotels1[index] = newValue!;
                  },
                  selectedItem: selectedHotels1.length == 0
                      ? "Select hotel " + (index + 1).toString()
                      : selectedHotels1[index]),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: () async {
                  showPicker(checkInController[index]);
                },
                child: CustomTextFieldHint(
                  label: "Hotel " + (index + 1).toString() + " check in",
                  controller: checkInController[index],
                  placeholder: "Eg: 01-01-23",
                  isValid: true,
                  errorText: "Password must upto 6 characters",
                  hint: "",
                  enabled: false,
                  textType: TextInputType.number,
                  onChanged: (value) {},
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  showPicker(checkOutController[index]);
                },
                child: CustomTextFieldHint(
                  label: "Hotel " + (index + 1).toString() + " check out",
                  controller: checkOutController[index],
                  placeholder: "Eg: 01-01-23",
                  isValid: true,
                  errorText: "Password must upto 6 characters",
                  hint: "",
                  enabled: false,
                  textType: TextInputType.number,
                  onChanged: (value) {},
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DropdownSearch<String>(
                  showSearchBox: true,
                  mode: Mode.MENU,
                  items: [
                    "01",
                    "02",
                    "03",
                    "04",
                    "05",
                    "06",
                    "07",
                    "08",
                    "09",
                    "10"
                  ],
                  label: "Rooms " + (index + 1).toString(),
                  hint: "Rooms " + index.toString(),
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (newValue) {
                    selectedNoOfRooms[index] = newValue!;
                    hotelTotalCalculation(index);
                  },
                  selectedItem: selectedNoOfRooms.length == 0
                      ? "Rooms " + (index + 1).toString()
                      : selectedNoOfRooms[index]),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: DropdownSearch<String>(
                  showSearchBox: true,
                  mode: Mode.MENU,
                  items: [
                    "01",
                    "02",
                    "03",
                    "04",
                    "05",
                    "06",
                    "07",
                    "08",
                    "09",
                    "10",
                    "11",
                    "12",
                    "13",
                    "14",
                    "15",
                    "16",
                    "17",
                    "18",
                    "19",
                    "20",
                    "21",
                    "22",
                    "23",
                    "24",
                    "25",
                    "26",
                    "27",
                    "28",
                    "29",
                    "30",
                  ],
                  label: "Nights " + (index + 1).toString(),
                  hint: "Nights " + index.toString(),
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (newValue) {
                    selectedNights[index] = newValue!;
                    hotelTotalCalculation(index);
                  },
                  selectedItem: selectedNights.length == 0
                      ? "Nights " + (index + 1).toString()
                      : selectedNights[index]),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: CustomTextFieldHint(
                label: "Rate",
                controller: rateController[index],
                placeholder: "Eg: 97",
                isValid: true,
                errorText: "Password must upto 6 characters",
                hint: "",
                textType: TextInputType.number,
                onChanged: (value) {
                  hotelTotalCalculation(index);
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomTextFieldHint(
                label: "Riyals",
                controller: currencyController[index],
                placeholder: "Eg: 82",
                isValid: true,
                errorText: "Password must upto 6 characters",
                hint: "",
                textType: TextInputType.number,
                onChanged: (value) {
                  hotelTotalCalculation(index);
                },
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // int total = int.parse(selectedNoOfRooms[index].toString()) *
                  //     int.parse(selectedNights[index].toString()) *
                  //     int.parse(rateController[index].text.toString()) *
                  //     int.parse(currencyController[index].text.toString());
                  // amountController[index].text = total.toString();
                },
                child: CustomTextFieldHint(
                  label: "Amount",
                  controller: amountController[index],
                  placeholder: "Eg: 1,000",
                  isValid: true,
                  errorText: "Password must upto 6 characters",
                  hint: "",
                  readOnly: true,
                  textType: TextInputType.number,
                  onChanged: (value) {},
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 2,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class AirlineWidget extends StatelessWidget {
  int index;
  AirlineWidget({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldHint(
          label: "Fligt details",
          controller: airlineController[index],
          placeholder: "Eg: Saudi Airline 7895",
          isValid: true,
          errorText: "Password must upto 6 characters",
          hint: "",
          onChanged: (value) {},
        ),
        Divider(
          thickness: 2,
          color: Colors.grey,
        ),
      ],
    );
  }
}
