import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_desing/Components/ElevatedButtonWidget.dart';

import '../utilis/colors.dart';

class description_screen extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productdescription;

  const description_screen({
    required this.imagePath,
    required this.productdescription,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    gradient: kgradient,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 4,
                        offset: Offset(0.0, 0.0),

                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imagePath,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Bite into Burger Bliss !!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primarycolor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: const Offset(0.2, 0.2),
                      color: Colors.grey.withOpacity(0.5),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        productdescription,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                            color: Colors.black54,
                            fontWeight: FontWeight.w400),
                      ),
                      ElevatedButtonWidget(
                        buttonText: "Add to cart",
                        onpressed: () {
                          Navigator.pop(context);
                        },
                        foregroundcolor: Colors.white,
                        backgroundcolor: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
