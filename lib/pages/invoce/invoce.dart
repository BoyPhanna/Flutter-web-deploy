import 'package:flutter/material.dart';
import 'package:mini_mart/pages/invoce/widgets/listItemInvoice_widget.dart';

class InvocePage extends StatefulWidget {
  const InvocePage({super.key});

  @override
  State<InvocePage> createState() => _InvocePageState();
}

class _InvocePageState extends State<InvocePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSale(),
      backgroundColor: Color.fromARGB(255, 105, 98, 173),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              height: 450,
              width: 400,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "វិកាយប័ត្របង់ប្រាក់",
                  style: TextStyle(
                    fontFamily: "KhmerMoul",
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ឈ្មោះទំនិញ",
                      style: TextStyle(
                        fontFamily: "KhmerOS",
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "តម្លៃ (ដុល្លា)",
                      style: TextStyle(
                        fontFamily: "KhmerOS",
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "ចំនួន",
                      style: TextStyle(
                        fontFamily: "KhmerOS",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 400,
                  height: 190,
                  child: ListView(
                    children: [
                      ListItemInvoceWidget(),
                      ListItemInvoceWidget(),
                      ListItemInvoceWidget(),
                      ListItemInvoceWidget(),
                      ListItemInvoceWidget(),
                      ListItemInvoceWidget(),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "តម្លៃសរុប",
                      style: TextStyle(
                        fontFamily: "KhmerOS",
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "20.63 ដុល្លា",
                      style: TextStyle(
                        fontFamily: "KhmerOS",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "កាលបរិច្ឆេទ",
                      style: TextStyle(
                        fontFamily: "KhmerOS",
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "12-02-2024 17:00",
                      style: TextStyle(
                        fontFamily: "KhmerOS",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "ម៉ាកាវ លក់ចាបហួយ",
                      style: TextStyle(
                        fontFamily: "KhmerMoul",
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "ភូមិ រើល ឃុំ ដូនតី ស្រុក ពញាក្រែក ខេត្ដ ត្បូងឃ្មុំ",
                      style: TextStyle(
                        fontFamily: "KhmerOS",
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              "assets/icons/icons8-print-48.png",
              width: 120,
              height: 120,
            ),
          )
        ],
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
        "វិកាយប័ត្របង់ប្រាក់",
        style: TextStyle(
            color: Color.fromARGB(255, 108, 34, 166),
            fontFamily: "KhmerMoul",
            fontSize: 20),
      ),
    );
  }
}
