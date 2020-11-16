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
          left: width * 0.1018,
          child: Text(
            'Team :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.01445,
          left: width * 0.4456,
          child: Text(
            'App Development',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: width * 0.1018,
          child: Text(
            'Position :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: width * 0.4456,
          child: Text(
            'Developer',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.12645,
          left: width * 0.1018,
          child: Text(
            'Age :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.12645,
          left: width * 0.4456,
          child: Text(
            '19',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.18245,
          left: width * 0.1018,
          child: Text(
            'Country :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.18245,
          left: width * 0.4456,
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
