import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ListProductSaleWidget extends StatelessWidget {
  const ListProductSaleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.all(8),
        width: 360,
        height: 110,
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 172, 214, 248)),
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 150, 233, 198).withOpacity(0.4),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/icons/landscape.png",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "កូនកណ្ដុលតូច",
                      style: TextStyle(
                          color: Color.fromARGB(255, 108, 34, 166),
                          fontFamily: "KhmerOS",
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/icons/icons8-remove-48.png",
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "តម្លៃ 5 ដុល្លា ចំនួន 5",
                      style: TextStyle(
                          color: Color.fromARGB(255, 108, 34, 166),
                          fontFamily: "KhmerOS",
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/icons/plus.png",
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/icons/minus.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
