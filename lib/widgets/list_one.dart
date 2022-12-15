// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListOne extends StatelessWidget {
  String title;
  ListOne({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: title == "Insomnia"
                    ? Colors.blue
                    : Color.fromARGB(255, 29, 33, 49),
                borderRadius: BorderRadius.circular(10)),
            width: 125,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
