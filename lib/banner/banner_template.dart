import 'package:banner_generate/banner/banner_model.dart';
import 'package:banner_generate/banner/db_helper.dart';
import 'package:flutter/material.dart';

class BannerTemplate extends StatefulWidget {
  const BannerTemplate({super.key});

  @override
  State<BannerTemplate> createState() => _BannerTemplateState();
}

class _BannerTemplateState extends State<BannerTemplate> {
  DBHelper? dbHelper;
  late Future<List<BannerModel>> banner;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DBHelper();
    loadData();
  }

  loadData() async {
    banner = dbHelper!.read();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: FutureBuilder(
          future: banner,
          builder: (context, AsyncSnapshot<List<BannerModel>> snapshot) {
            return snapshot.connectionState == ConnectionState.waiting
                ? Center(child: Text('loading...'))
                : ListView.builder(
                    // shrinkWrap: true,
                    // reverse: true,
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return Stack(children: [
                        Image.asset(
                          'assets/images/1bannerbac.png',
                          // height: double.infinity,
                          // width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/1banneriamge.jpg'),
                                  radius: 120,
                                ),
                                Text(
                                  snapshot.data![index].name,
                                  style: TextStyle(
                                      color: Color(0xffB78A07),
                                      fontSize: 40,
                                      fontFamily: 'Maragsâ'),
                                ),
                                IntrinsicHeight(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Package Include',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0xff401811),
                                                fontSize: 18,
                                                fontFamily: 'Maragsâ'),
                                          ),
                                          Text(
                                            snapshot.data![index].package,

                                            // 'Hotal & Transport\nBy Bus & Flight\nVisa & Insurance',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff401811),
                                                fontFamily: 'Roboto'),
                                          ),
                                        ],
                                      ),
                                      VerticalDivider(
                                        color: Color(0xff401811),
                                        thickness: 2,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            snapshot.data![index].dates,
                                            // 'Departure 18\nAuguest',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0xff401811),
                                                fontSize: 18,
                                                fontFamily: 'Maragsâ'),
                                          ),
                                          Text(
                                            snapshot.data![index].price,
                                            // 'PRE PERSON\n2,20,000',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff401811),
                                                fontFamily: 'Roboto'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Text(
                                  'Makkah Hotal : Kiswa Tower',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff401811),
                                      fontFamily: 'Roboto'),
                                ),
                                Text(
                                  'Madina Hotal : Bir Al Eiman / Warda Al Safa',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff401811),
                                      fontFamily: 'Roboto'),
                                ),
                                SizedBox(
                                  height: size.height * 0.04,
                                ),
                                Text(
                                  snapshot.data![index].no,
                                  // '0321/0335-8285400',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff401811),
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]);
                    });
          }),
      // Expanded(
      //   child: FutureBuilder(
      //       future: banner,
      //       builder: (context, AsyncSnapshot<List<BannerModel>> snapshot) {
      //         return snapshot.connectionState == ConnectionState.waiting
      //             ? Center(child: Text('loading...'))
      //             : ListView.builder(
      //                 // shrinkWrap: true,
      //                 // reverse: true,
      //                 itemCount: snapshot.data?.length,
      //                 itemBuilder: (context, index) {
      //                   return Text(
      //                     snapshot.data![index].name,
      //                     style: Theme.of(context).textTheme.headline2,
      //                   );
      //                 },
      //               );
      //       }),
      // ),
    ));
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';s
// import 'package:flutter/src/widgets/framework.dart';

// import 'db_helper.dart';

// class BannerTemplate extends StatelessWidget {
//   final String title;
//   const BannerTemplate({
//     super.key, required this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // var read = DBHelper.instance.read([DBHelper.dbName]);
//     // print(read);
//     return SafeArea(
//       child: Scaffold(
//         body: Text(title),
//       ),
//     );
//   }
// }
