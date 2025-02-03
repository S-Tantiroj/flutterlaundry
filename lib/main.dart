import 'package:flutter/material.dart';
//import 'login_page.dart';
//import 'profile_page.dart';
//import 'laundry_page.dart';
//import 'my_futurebuilder_page.dart';
import 'detail_page.dart';
import 'my_listpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laundry App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      /*initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/profile': (context) => ProfilePage(),
        '/laundry': (context) => LaundryPage(),
        '/futurebuilder': (context) => MyFutureBuilderPage(),
      },*/

      //home: DetailPage(productId: 1),
      home: const MyListPage(),
    );
  }
}
