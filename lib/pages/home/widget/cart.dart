import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 5, right: 5),
        decoration: BoxDecoration(
            color: Colors.pink.withAlpha(50),
            borderRadius: BorderRadius.circular(16)),
        width: 400,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.pie_chart,
              size: 150,
            ),
            Icon(
              Icons.bar_chart,
              size: 150,
            )
          ],
        ));
  }
}
