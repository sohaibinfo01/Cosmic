import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project2/listview.dart';
import 'package:project2/login.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 900,
              width: 400,
              child: Image.asset("assets/splash.png"),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 76),
              child:Image(image: AssetImage("assets/cosm.png"))
            ),
                Column(
                  children: [
                    Container(
                      child: Image(image: AssetImage("assets/logo.png")),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
