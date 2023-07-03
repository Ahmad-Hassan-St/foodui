import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_desing/Screens/description_screen.dart';
import 'package:food_desing/utilis/burger.dart';

import '../Components/ContainerWidget.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: buildAppBar(screenWidth *0.03),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.builder(
          itemCount: burger_image_path.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            //mainAxisExtent: 20,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return ContainerWidget(
              image_path: burger_image_path[index],
              productname: burger_name[index],
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => description_screen(
                      productdescription: burger_description[index],
                      imagePath: burger_image_path[index],
                      productName: burger_name[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  AppBar buildAppBar( double screenWidth) {
    return AppBar(
      elevation: 0,
      foregroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      title: const Text(
        "Category",
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
      ),
      actions:  [
        const Icon(Icons.add_alert),
        SizedBox(width: screenWidth),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.favorite_outline),
        ),
      ],
    );
  }
}
