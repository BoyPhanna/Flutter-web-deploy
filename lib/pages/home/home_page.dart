import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:mini_mart/pages/home/widget/cart.dart';
import 'package:mini_mart/pages/home/widget/menu.dart';
import 'package:mini_mart/pages/import/import_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 105, 98, 173),
          child: ListView(
            padding: EdgeInsets.only(left: 5, top: 90),
            children: [
              Column(
                children: [
                  FadeInDown(
                    duration: Duration(seconds: 1),
                    child: Text(
                      "លក់ចាបហួយ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 150, 233, 198),
                          fontFamily: "KhmerMoul",
                          fontSize: 20),
                    ),
                  ),
                  Divider(
                    color: Colors.pink,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      FadeInLeft(
                        duration: Duration(seconds: 1),
                        child: GestureDetector(
                          onTap: () {
                            print("object");
                          },
                          child: Image(
                            image: AssetImage("assets/icons/info.png"),
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FadeInRight(
                        duration: Duration(seconds: 1),
                        child: Text(
                          "អំពីកម្មវិធី",
                          style: TextStyle(
                              color: Color.fromARGB(255, 150, 233, 198),
                              fontFamily: "KhmerMoul",
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("hello");
                        },
                        child: FadeInUp(
                          duration: Duration(seconds: 1),
                          child: Image(
                            image: AssetImage("assets/icons/working.png"),
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FadeInRight(
                        duration: Duration(seconds: 1),
                        child: Text(
                          "អំពីអក្នបង្កើត",
                          style: TextStyle(
                              color: Color.fromARGB(255, 150, 233, 198),
                              fontFamily: "KhmerMoul",
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
      backgroundColor: Color.fromARGB(255, 105, 98, 173),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu)),
        ),
        actions: [Icon(Icons.person)],
        title: Text(
          "វីន មិនិម៉ាត",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: const Color.fromARGB(255, 108, 34, 166),
              fontFamily: "KhmerMoul"),
        ),
        backgroundColor: Color.fromARGB(255, 150, 233, 198),
      ),
      body: Column(
        children: [
          FadeInDown(child: CardWidget()),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 400,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FadeInLeft(
                      child: MenuButton(
                        logo: "money.png",
                        title: "លក់ទំនិញ",
                      ),
                    ),
                    FadeInLeft(
                      child: GestureDetector(
                        onDoubleTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ImportPage()),
                        ),
                        child: MenuButton(
                          logo: "import.png",
                          title: "នាំចូល",
                        ),
                      ),
                    ),
                  ],
                ),
                FadeInRight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuButton(
                        logo: "box.png",
                        title: "របាយការណ៍",
                      ),
                      MenuButton(
                        logo: "report.png",
                        title: "នាំចូល",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
