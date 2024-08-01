import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:mini_mart/pages/search_sale/widgets/listSearchProducts_widget.dart';
import 'package:mini_mart/pages/search_sale/widgets/serachBar_wiget.dart';

class SearchSalePage extends StatefulWidget {
  const SearchSalePage({super.key});

  @override
  State<SearchSalePage> createState() => _SearchSalePageState();
}

class _SearchSalePageState extends State<SearchSalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSearchSale(),
      backgroundColor: Color.fromARGB(255, 105, 98, 173),
      body: Padding(
        padding: const EdgeInsets.only(left: 9.0, right: 9.0),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          SearchBarWidget(),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 400,
            height: 530,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16)),
            child: ListView(
              children: [
                ListSearchProductWidget(),
                ListSearchProductWidget(),
                ListSearchProductWidget(),
                ListSearchProductWidget(),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  AppBar appBarSearchSale() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back,
        color: Color.fromARGB(255, 108, 34, 166),
      ),
      backgroundColor: Color.fromARGB(255, 150, 233, 198),
      title: Text(
        "រើសទំនិញ",
        style: TextStyle(
            color: Color.fromARGB(255, 108, 34, 166),
            fontFamily: "KhmerMoul",
            fontSize: 20),
      ),
    );
  }
}
