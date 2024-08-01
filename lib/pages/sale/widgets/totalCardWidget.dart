import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TotaCardWidget extends StatelessWidget {
  const TotaCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 400,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromARGB(255, 150, 233, 198),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeInLeft(
            child: Text(
              "តម្លៃសរុប",
              style: TextStyle(
                  color: Color.fromARGB(255, 108, 34, 166),
                  fontFamily: "KhmerOS",
                  fontSize: 20),
            ),
          ),
          FadeInRight(
            child: Text(
              "25 ដុល្លា",
              style: TextStyle(
                  color: Color.fromARGB(255, 108, 34, 166),
                  fontFamily: "KhmerOS",
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
