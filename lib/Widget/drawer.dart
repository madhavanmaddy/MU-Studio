import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mu_studio/main.dart';
import 'package:mu_studio/servicePage.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
          Image.asset(
            'assets/Drawer Header.png',
            fit: BoxFit.fitWidth,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                        fontSize: width * 0.051, letterSpacing: width * 0.0051),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: null,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ServicePage()));
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What do we do?',
                    style: TextStyle(
                        fontSize: width * 0.051, letterSpacing: width * 0.0051),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: null,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
