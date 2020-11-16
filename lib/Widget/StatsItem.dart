import 'package:flutter/material.dart';

class StatsItem extends StatelessWidget {
  const StatsItem({
    Key key,
    @required this.width,
    @required this.content,
    @required this.pad,
    this.bcontent,
  }) : super(key: key);

  final double width;
  final String content;
  final double pad;
  final String bcontent;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: height * 0.0898,
          decoration: BoxDecoration(
              border: Border.all(
                  width: width * 0.00509, color: Colors.black.withOpacity(1)),
              color: Colors.white,
              shape: BoxShape.circle),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(pad),
              child: Text(
                content,
                style: TextStyle(
                  fontSize: width * 0.056,
                  letterSpacing: width * 0.0056,
                  color: Colors.black.withOpacity(1),
                ),
              ),
            ),
          ),
        ),
        Text(bcontent)
      ],
    );
  }
}
