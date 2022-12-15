// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListTwo extends StatelessWidget {
  final String aPath;
  const ListTwo({super.key, required this.aPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.25,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage(aPath),
              fit: BoxFit.fill,
            )),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sleep Meditation",
                style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "7 Day Audio Series",
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 14,
                  color: Color.fromARGB(255, 195, 194, 194),
                  fontWeight: FontWeight.w100,
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/headphone.svg",
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset(
                      "assets/icons/tape.svg",
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
