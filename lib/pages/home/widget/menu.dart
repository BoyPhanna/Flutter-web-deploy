import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String logo;
  final String title;
  const MenuButton({
    required this.logo,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Hello");
      },
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 150, 233, 198).withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(alignment: Alignment.center, children: [
          Image(
            image: AssetImage("assets/icons/${logo}"),
            width: 100,
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 150, 233, 198),
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 108, 34, 166),
                        fontFamily: "KhmerOS"),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
