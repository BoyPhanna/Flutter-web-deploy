import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ListSearchProductWidget extends StatelessWidget {
  const ListSearchProductWidget({
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
              width: 20,
            ),
            Text(
              "កូនកណ្ដុរតូច",
              style: TextStyle(
                  color: Color.fromARGB(255, 108, 34, 166),
                  fontFamily: "KhmerOS",
                  fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
