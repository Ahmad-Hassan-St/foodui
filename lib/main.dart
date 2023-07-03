import 'package:flutter/material.dart';
import 'package:food_desing/Screens/SplashScreen.dart';
import 'package:food_desing/utilis/colors.dart';

void main() {
  runApp(const FoodDesign());
}

class FoodDesign extends StatefulWidget {
  const FoodDesign({Key? key}) : super(key: key);

  @override
  _FoodDesignState createState() => _FoodDesignState();
}

class _FoodDesignState extends State<FoodDesign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          //backgroundColor: primaryColor,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
