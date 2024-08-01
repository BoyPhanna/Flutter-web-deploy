import 'package:flutter/material.dart';
import 'package:mini_mart/pages/sale/widgets/listProductsSaleWiget.dart';
import 'package:mini_mart/pages/sale/widgets/processButton_widget.dart';
import 'package:mini_mart/pages/sale/widgets/totalCardWidget.dart';

class SalePage extends StatefulWidget {
  const SalePage({super.key});

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSale(),
      backgroundColor: Color.fromARGB(255, 105, 98, 173),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            width: 400,
            height: 400,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16)),
            child: ListView(
              children: [
                ListProductSaleWidget(),
                ListProductSaleWidget(),
                ListProductSaleWidget(),
                ListProductSaleWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TotaCardWidget(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProcessButtonWidget(
                image: "barcode-scan.png",
                title: "ស្គែន",
              ),
              ProcessButtonWidget(
                image: "icons8-sale-48.png",
                title: "លក់",
              ),
              ProcessButtonWidget(
                image: "search.png",
                title: "រើស",
              ),
            ],
          )
        ]),
      ),
    );
  }

  AppBar appBarSale() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back,
        color: Color.fromARGB(255, 108, 34, 166),
      ),
      backgroundColor: Color.fromARGB(255, 150, 233, 198),
      title: Text(
        "លក់ទំនិញ",
        style: TextStyle(
            color: Color.fromARGB(255, 108, 34, 166),
            fontFamily: "KhmerMoul",
            fontSize: 20),
      ),
    );
  }
}
