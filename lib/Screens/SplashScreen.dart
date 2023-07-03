import 'package:flutter/material.dart';
import 'dart:async';
import 'package:food_desing/Screens/homfeed_screen.dart';

import '../utilis/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const homefeed_screen(),
          // builder: (context) => const description_screen(),

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff8C1515),
                Colors.red,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(

                'assets/images/burger1.png',
                colorBlendMode: BlendMode.colorBurn,
                height: 400,
              ),
              const Text(
                'Customized Burger',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto',
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
                child: Text(

                  "Customized You Pizza through the burger Make tool",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20,
                    height: 1.6,

                  ),
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                alignment: Alignment.center,
                child: const Text(
                  'Set Delivery Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
