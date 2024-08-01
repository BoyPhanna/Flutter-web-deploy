import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 300,
          height: 60,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 150, 233, 198),
              borderRadius: BorderRadius.circular(16)),
          child: TextField(
            style: TextStyle(
                color: Color.fromARGB(255, 108, 34, 166),
                fontFamily: "KhmerOS"),
            decoration: InputDecoration(
                fillColor: Colors.red,
                hintText: "ឈ្មោះឬ អត្ដលេខទំនិញ",
                hintStyle: TextStyle(color: Color.fromARGB(255, 108, 34, 166))),
          ),
        ),
        Container(
            width: 65,
            height: 60,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 150, 233, 198),
                borderRadius: BorderRadius.circular(16)),
            child: Icon(Icons.search)),
      ],
    );
  }
}
