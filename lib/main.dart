import 'package:flutter/material.dart';
import 'package:food_desing/Screens/SplashScreen.dart';

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
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: SplashScreen()),
      ),
    );
  }
}
