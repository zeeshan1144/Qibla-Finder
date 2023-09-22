import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qibla_finder/View/qibla.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => QiblahScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 200, bottom: 100, left: 50, right: 50),
              child: Center(
                child: Image(
                  image: AssetImage(
                    "asssets/qibla.png",
                  ),
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Text(
              "Welcome to Qibla Finder App",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
