import 'package:flutter/material.dart';
import 'package:mini_mart/pages/Login/Login.dart';
import 'package:mini_mart/pages/home/home_page.dart';
import 'package:mini_mart/pages/import/import_page.dart';
import 'package:mini_mart/pages/invoce/invoce.dart';
import 'package:mini_mart/pages/sale/sale_page.dart';
import 'package:mini_mart/pages/search_sale/searchSale.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF151026);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      title: "Mini mart",
      home: HomePage(),
    );
  }
}
