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
          left: width * 0.1018,
          child: Text(
            'Statistics :',
            style: TextStyle(
                fontSize: width * 0.056, letterSpacing: width * 0.0056),
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: width * 0.1145,
          child: StatsItem(
            width: width,
            content: '5',
            pad: width * 0.0522,
            bcontent: 'Matches',
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: width * 0.4328,
          child: StatsItem(
            width: width,
            content: '10*',
            pad: width * 0.0254,
            bcontent: 'Goals',
          ),
        ),
        Positioned(
          top: height * 0.07045,
          left: width * 0.7511,
          child: StatsItem(
            width: width,
            content: '3',
            pad: width * 0.0522,
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
