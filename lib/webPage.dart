import 'package:flutter/material.dart';
import 'package:mu_studio/Widget/drawer.dart';
import 'package:mu_studio/Widget/maddyStats.dart';
import 'package:mu_studio/Widget/udaiDetails.dart';
import 'package:url_launcher/url_launcher.dart';

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'Web Development',
            style: TextStyle(
                color: Colors.black,
                fontSize: width * 0.055,
                letterSpacing: width * 0.005),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: width * 0.25,
                backgroundImage: AssetImage('assets/Sample Portrait.jpeg'),
              ),
              SizedBox(
                height: height * 0.0289,
              ),
              Text(
                'Udai Srinivasa Prasad K S',
                style: TextStyle(
                    fontSize: width * 0.066, letterSpacing: width * 0.0066),
              ),
              Expanded(child: UdaiDetails()),
              Expanded(
                child: Stats(),
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'http://wa.me/+919597096870';
                  try {
                    await launch(url);
                  } catch (e) {
                    throw '$e';
                  }
                },
                child: Container(
                  width: width * 0.833,
                  height: height * 0.066,
                  child: Center(
                      child: Text(
                    'Contact Udai Prasad',
                    style: TextStyle(
                        fontSize: width * 0.055,
                        letterSpacing: width * 0.005,
                        color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(108, 99, 255, 1),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(
                height: height * 0.0198,
              )
            ],
          ),
        ),
      ),
    );
  }
}
