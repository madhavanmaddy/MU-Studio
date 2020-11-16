import 'package:flutter/material.dart';
import 'package:mu_studio/Widget/drawer.dart';
import 'package:mu_studio/appPage.dart';
import 'package:mu_studio/webPage.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'What do we do?',
            style: TextStyle(
                color: Colors.black,
                fontSize: width * 0.055,
                letterSpacing: width * 0.005),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/AppDev.png',
                height: 150,
              ),
              Text(
                'We develop beautiful Android Apps bringing your ideas live to the world',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05, letterSpacing: width * 0.005),
              ),
              SizedBox(
                height: height * 0.0289,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AppPage())),
                },
                child: Container(
                  width: width * 0.833,
                  height: height * 0.066,
                  child: Center(
                      child: Text(
                    'Need an App??',
                    style: TextStyle(
                        fontSize: width * 0.055,
                        letterSpacing: width * 0.005,
                        color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(108, 99, 255, 1),
                      borderRadius: BorderRadius.circular(width * 0.06365)),
                ),
              ),
              Image.asset(
                'assets/WebDev.png',
                height: 150,
              ),
              Text(
                'We develop Creative Websites for your businesses and Startups',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * 0.05, letterSpacing: width * 0.005),
              ),
              SizedBox(
                height: height * 0.0289,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => WebPage())),
                },
                child: Container(
                  width: width * 0.833,
                  height: height * 0.066,
                  child: Center(
                      child: Text(
                    'Need a Website??',
                    style: TextStyle(
                        fontSize: width * 0.055,
                        letterSpacing: width * 0.005,
                        color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(108, 99, 255, 1),
                      borderRadius: BorderRadius.circular(width * 0.06365)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
