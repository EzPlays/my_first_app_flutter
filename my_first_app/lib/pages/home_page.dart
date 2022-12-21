import 'package:flutter/material.dart';
import 'package:my_first_app/pages/widgets/blog_content_widget.dart';
import 'package:my_first_app/pages/widgets/elevatedbuttom_wiget.dart';
import 'login_page.dart';
import 'package:dio/dio.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;

  List textbuttoms = [
    "Money",
    "Bitcoin",
    "Stock Market",
    "House Market",
    "Diamond Hands",
  ];

  List blogcontentdata = [
    {
      "title": "How to get rich",
      "image": "images/image1.png",
    },
    {
      "title": "Should you buy today",
      "image": "images/image2.png",
    },
    {
      "title": "Stock market",
      "image": "images/image3.png",
    },
    {
      "title": "How to make apps",
      "image": "images/image4.png",
    },
  ];

  // late List<dynamic> textb;
  // late Future<dynamic> futureListado;

  // Future<dynamic> _getListado() async {
  //   var dio = Dio();
  //   final response = await dio.get('http://localhost:5000/titlebutoms');
  //   if (response.statusCode == 200) {
  //     // response.data;
  //     textb = response.data;
  //     print('response statusCode: ${response.statusCode}');
  //     print('response title: $textb');
  //     return textb;
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }

  // main() async {
  //   var dio = Dio();
  //   final response = await dio.get('http://localhost:5000/titlebutoms');
  //   // response.data;
  //   var datos = response.data[0];
  //   var titulo = datos['title'];
  //   print('response statusCode: ${response.statusCode}');
  //   print('response title: ${titulo}');
  //   return titulo;
  // }

  @override
  void initState() {
    super.initState();
    // futureListado = _getListado();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (backgroundColor == Colors.white) {
                  backgroundColor = Colors.red.shade300;
                } else {
                  backgroundColor = Colors.white;
                }
              });
            },
            icon: const Icon(Icons.color_lens),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: ListTile(
                  title: Text(
                    'Flutter Mapp',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: Wrap(
                spacing: 10,
                children: [
                  for (var item in textbuttoms)
                    ElevatedContentWidget(
                      textbuttom: item,
                    ),

                  // FutureBuilder<dynamic>(
                  //   future: futureListado,
                  //   builder: (context, snapshot) {
                  //     if (snapshot.hasData) {
                  //       for (var i = 0; i <= textb.length; i++) {
                  //         return ListView.builder(
                  //           shrinkWrap: true,
                  //           itemBuilder: (context, index) {
                  //             return ElevatedContentWidget(
                  //               textbuttom: textb[index]['title'],
                  //             );
                  //           },
                  //           itemCount: textb.length,
                  //         );
                  //       }
                  //     } else if (snapshot.hasError) {
                  //       return Text(
                  //         '${snapshot.error}',
                  //       );
                  //     }
                  //     // By default, show a loading spinner.
                  //     return const CircularProgressIndicator();
                  //   },
                  // )
                  // FutureBuilder<dynamic>(
                  //   future: _getListado(),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.hasData) {
                  //       print(snapshot);
                  //       return ElevatedContentWidget(textbuttom: snapshot.data);
                  //     } else {
                  //       print("No hay información");
                  //       return Text("Sin data");
                  //     }
                  //   },
                  // return const CircularProgressIndicator();
                  // ),
                  // ElevatedContentWidget(textbuttom: ),
                ],
              ),
            ),
            //! for blog
            for (var itemblog in blogcontentdata) BlogBoxWidget(
              title: itemblog['title'],
              imagePath: itemblog['image'],
            ),
            //! First
            // const BlogBoxWidget(
            //   title: 'How to get rich',
            //   imagePath: 'images/image1.png',
            // ),
            // //! two
            // const BlogBoxWidget(
            //   title: 'Should you buy today',
            //   imagePath: 'images/image2.png',
            // ),
            // //!tree
            // const BlogBoxWidget(
            //   title: 'Stock market',
            //   imagePath: 'images/image3.png',
            // ),
            // //!four
            // const BlogBoxWidget(
            //   title: 'How to make apps',
            //   imagePath: 'images/image4.png',
            // ),
          ],
        ),
      ),
      // body: FutureBuilder<dynamic>(
      //   future: futureListado,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return ListView.builder(
      //         itemBuilder: (context, index) {
      //           return ElevatedContentWidget(
      //             textbuttom: textb[index]['title'],
      //           );
      //         },
      //         itemCount: textb.length,
      //       );
      //       // for (var i = 0; i <= textb.length; i++) {
      //       //   return ElevatedContentWidget(
      //       //     textbuttom: textb[i]['title'],
      //       //   );
      //       // }
      //       // for (var item in textb.length) {
      //       //
      //       // }
      //     } else if (snapshot.hasError) {
      //       return Text(
      //         '${snapshot.error}',
      //       );
      //     }
      //     // By default, show a loading spinner.
      //     return const CircularProgressIndicator();
      //   },
      // ),
    );
  }
}
