import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ProcessButtonWidget extends StatelessWidget {
  final String image;
  final String title;
  const ProcessButtonWidget({
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 150, 233, 198).withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          FadeInDown(
            child: Image.asset(
              "assets/icons/$image",
              width: 80,
              height: 80,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 99,
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 150, 233, 198),
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Color.fromARGB(255, 108, 34, 166),
                        fontFamily: "KhmerOS",
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
