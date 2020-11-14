import 'dart:convert';

import 'package:flutter/material.dart';

class MaddyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: height * 0.01445,
          left: 40,
          child: Text(
            'Team :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.01445,
          left: 175,
          child: Text(
            'App Development',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: 40,
          child: Text(
            'Position :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: 175,
          child: Text(
            'Developer',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.12645,
          left: 40,
          child: Text(
            'Age :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.12645,
          left: 175,
          child: Text(
            '19',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.18245,
          left: 40,
          child: Text(
            'Country :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.18245,
          left: 175,
          child: Text(
            'India',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
      ],
    );
  }
}
