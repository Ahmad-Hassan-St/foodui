import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_desing/utilis/burger.dart';
import 'package:food_desing/utilis/colors.dart';
import '../Components/ProductWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
    floatingActionButton: FloatingActionButton(onPressed: () {  },
      child: Icon(Icons.add),

    ),
      appBar: AppBar(
        actions:  [
          const Icon(Icons.add_alert),
          SizedBox(width: screenWidth * 0.03),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_cart),
          ),
        ],
        backgroundColor: primaryColor,

        title: const Center(
          child: Text(
            "Fast n Food ",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: [
                for (int i = 0; i < slider_imagepath.length; i++)
                  SliderImage(imagepath: slider_imagepath[i]),
              ],
              options: CarouselOptions(
                autoPlay: true,
                height: screenHeight * 0.25,
                enlargeCenterPage: true,
                autoPlayAnimationDuration: const Duration(microseconds: 120),
                autoPlayCurve: Curves.easeIn,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: const Offset(0.2, 0.2),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ],
                ),
                width: double.infinity,
                child: const Text(
                  "Promotional Items",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Robot",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: burger_image_path.length,
                // itemCount: imagepath.length,
                itemBuilder: (BuildContext context, int index) {
                  return productWidget(
                    imagepath: burger_image_path[index],
                    productname: burger_name[index],
                    durationText: "15 min video",
                    price: "24.4",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderImage extends StatelessWidget {
  const SliderImage({
    super.key,
    required this.imagepath,
  });

  final String imagepath;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          width: double.infinity,
          height: screenHeight * 0.6,
          fit: BoxFit.cover,
          image: AssetImage(
            imagepath,
          ),
        ),
      ),
    );
  }
}
