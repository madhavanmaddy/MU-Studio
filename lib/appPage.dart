import 'package:flutter/material.dart';
import 'package:mu_studio/Widget/drawer.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
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
          'App Development',
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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Developer Details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: width * 0.05, letterSpacing: width * 0.005),
                ),
                SizedBox(
                  height: height * 0.0145,
                ),
                Image.network(
                  'https://newscenter.nmsu.edu/Photos/get/12965/full/ChrisSroka_NMSU_CovidTeam_081420-1.jpg',
                  width: width * 0.9,
                  // height: height * 0.75,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                  cacheHeight: (height * 0.75).toInt(),
                ),
                SizedBox(
                  height: height * 0.0145,
                ),
                Text(
                  'Madhavan S',
                  style: TextStyle(
                      fontSize: width * 0.05, letterSpacing: width * 0.005),
                ),
                SizedBox(
                  height: height * 0.0145,
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontSize: width * 0.05, letterSpacing: width * 0.005),
                ),
                SizedBox(
                  height: height * 0.0145,
                ),
                Text(
                  'Core Team Member of Flutter Cluster at DSC SASTRA Deemed to be University',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: width * 0.05, letterSpacing: width * 0.005),
                ),
                SizedBox(
                  height: height * 0.0145,
                ),
                Text(
                  'Has the Knowledge of Flutter,Firebase,Dart,Node.js',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                      fontSize: width * 0.05, letterSpacing: width * 0.005),
                ),
                SizedBox(
                  height: height * 0.0145,
                ),
                Text(
                  'Have done many Projects and has hands-on experience on all the above mentioned skills',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: width * 0.05, letterSpacing: width * 0.005),
                ),
                SizedBox(
                  height: height * 0.0145,
                ),
                Text(
                  'Social Media Handles',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05,
                      letterSpacing: width * 0.005),
                ),
                SizedBox(
                  height: height * 0.0145,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/Insta.png',
                      height: 50,
                      width: 50,
                    ),
                    Image.asset(
                      'assets/Whatsapp.png',
                      height: 60,
                      width: 60,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
