import 'package:flutter/material.dart';
import 'package:mu_studio/Widget/drawer.dart';
import 'package:mu_studio/servicePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print('Height: $height\nWidth : $width');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Welcome.png',
              height: height * 0.35,
              width: width,
              cacheHeight: (height * 0.35).toInt(),
              cacheWidth: width.toInt(),
            ),
            Text(
              'Hi!',
              style: TextStyle(fontSize: width * 0.1),
            ),
            SizedBox(
              height: height * 0.0289,
            ),
            Text(
              'Greetings from MU Studio',
              style: TextStyle(
                  fontSize: width * 0.066, letterSpacing: width * 0.0066),
            ),
            SizedBox(
              height: height * 0.0289,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ServicePage())),
              },
              child: Container(
                width: width * 0.833,
                height: height * 0.066,
                child: Center(
                    child: Text(
                  'Continue to the App →',
                  style: TextStyle(
                      fontSize: width * 0.055,
                      letterSpacing: width * 0.005,
                      color: Colors.white),
                )),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(108, 99, 255, 100),
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            SizedBox(
              height: height * 0.0289,
            ),
            Material(
              borderRadius: BorderRadius.circular(width * 0.0833),
              elevation: width * 0.0277,
              child: Container(
                height: height * 0.2668,
                width: width * 0.85,
                child: Padding(
                  padding: EdgeInsets.all(width * 0.0556),
                  child: Text(
                    'Our Motto,\n\tAt MU Studio, we developers strive hard to produce good quality solutions to our clients with utmost dedication. ',
                    style: TextStyle(
                        fontSize: width * 0.055,
                        color: Colors.white,
                        letterSpacing: width * 0.005),
                    softWrap: true,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.0833),
                    color: Color.fromRGBO(108, 99, 255, 100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
