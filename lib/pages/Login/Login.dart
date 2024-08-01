import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 98, 173),
      appBar: AppBar(
        title: Text(
          "ចុះឈ្មោះហាង",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: const Color.fromARGB(255, 108, 34, 166),
              fontFamily: "KhmerMoul"),
        ),
        backgroundColor: Color.fromARGB(255, 150, 233, 198),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5, left: 5, right: 5),
        decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16)),
        width: 400,
        height: 500,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 233, 198),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  )),
              child: TextField(
                style: TextStyle(
                    color: const Color.fromARGB(255, 108, 34, 166),
                    fontFamily: "KhmerOS",
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                decoration: InputDecoration(
                    hintText: "ឈ្មោះហាង",
                    hintStyle: TextStyle(
                        fontFamily: "KhmerOS",
                        color: const Color.fromARGB(255, 108, 34, 166))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "ចុះឈ្មោះ",
                style: TextStyle(
                    fontSize: 19,
                    fontFamily: "KhmerOS",
                    color: const Color.fromARGB(255, 108, 34, 166)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
