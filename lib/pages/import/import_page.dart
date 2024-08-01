import 'package:flutter/material.dart';

class ImportPage extends StatefulWidget {
  const ImportPage({super.key});

  @override
  State<ImportPage> createState() => _ImportPageState();
}

class _ImportPageState extends State<ImportPage> {
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
            height: 490,
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.3),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 233, 198),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  style: TextStyle(
                      color: const Color.fromARGB(255, 108, 34, 166),
                      fontFamily: "KhmerOS",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "ឈ្មោះទំនិញ",
                      hintStyle: TextStyle(
                          fontFamily: "KhmerOS",
                          color: const Color.fromARGB(255, 108, 34, 166))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 233, 198),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  style: TextStyle(
                      color: const Color.fromARGB(255, 108, 34, 166),
                      fontFamily: "KhmerOS",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "លេខកូដទំនិញ",
                      hintStyle: TextStyle(
                          fontFamily: "KhmerOS",
                          color: const Color.fromARGB(255, 108, 34, 166))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 233, 198),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 108, 34, 166),
                      fontFamily: "KhmerOS",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "តម្លៃ (ដុល្លា)",
                      hintStyle: TextStyle(
                          fontFamily: "KhmerOS",
                          color: const Color.fromARGB(255, 108, 34, 166))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 233, 198),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 108, 34, 166),
                      fontFamily: "KhmerOS",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "ចំនួន",
                      hintStyle: TextStyle(
                          fontFamily: "KhmerOS",
                          color: const Color.fromARGB(255, 108, 34, 166))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/icons/landscape.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 10),
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromARGB(255, 150, 233, 198),
                    ),
                    child: Center(
                        child: Text(
                      "ស្រាបៀ",
                      style: TextStyle(
                          fontFamily: "KhmerOS",
                          color: const Color.fromARGB(255, 108, 34, 166),
                          fontSize: 20),
                    )),
                  ),
                ],
              )
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromARGB(255, 150, 233, 198),
                ),
                textStyle:
                    MaterialStateProperty.resolveWith((states) => TextStyle(
                          fontFamily: "KhmerOS",
                          color: Color.fromARGB(255, 108, 34, 166),
                          fontSize: 20,
                        )),
              ),
              child: Text("បញ្ចូល")),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {},
        child: Container(
          width: 200,
          height: 200,
          child: Image.asset("assets/icons/barcode-scan.png"),
        ),
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
        "នាំចូល",
        style: TextStyle(
            color: Color.fromARGB(255, 108, 34, 166),
            fontFamily: "KhmerMoul",
            fontSize: 20),
      ),
    );
  }
}
