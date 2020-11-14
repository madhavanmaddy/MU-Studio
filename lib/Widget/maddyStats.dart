import 'package:flutter/material.dart';
import 'package:mu_studio/Widget/StatsItem.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
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
            'Statistics :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: 45,
          child: StatsItem(
            width: width,
            content: '5',
            pad: 22.5,
            bcontent: 'Matches',
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: 170,
          child: StatsItem(
            width: width,
            content: '10*',
            pad: 10,
            bcontent: 'Goals',
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: 295,
          child: StatsItem(
            width: width,
            content: '3',
            pad: 22.5,
            bcontent: 'Assists',
          ),
        ),
        // Positioned(
        //   top: height * 0.1842,
        //   left: 45,
        //   child: StatsItem(
        //     width: width,
        //     content: '70%',
        //     pad: 7.5,
        //     bcontent: 'Accuracy',
        //   ),
        // ),
        // Positioned(
        //   top: height * 0.1842,
        //   left: 170,
        //   child: StatsItem(
        //     width: width,
        //     content: '82%',
        //     pad: 7.5,
        //     bcontent: 'Passes',
        //   ),
        // ),
        // Positioned(
        //   top: height * 0.1842,
        //   left: 295,
        //   child: StatsItem(
        //     width: width,
        //     content: '36.7',
        //     pad: 5,
        //     bcontent: 'Goals/min',
        //   ),
        // ),
      ],
    );
  }
}
