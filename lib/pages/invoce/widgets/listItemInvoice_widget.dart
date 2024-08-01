import 'package:flutter/material.dart';

class ListItemInvoceWidget extends StatelessWidget {
  const ListItemInvoceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Coca Cola",
            style: TextStyle(
              fontFamily: "KhmerOS",
              fontSize: 16,
            ),
          ),
          Text(
            "0.50",
            style: TextStyle(
              fontFamily: "KhmerOS",
              fontSize: 16,
            ),
          ),
          Text(
            "10",
            style: TextStyle(
              fontFamily: "KhmerOS",
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
