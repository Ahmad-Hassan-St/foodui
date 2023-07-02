import 'package:flutter/material.dart';

import '../utilis/colors.dart';

class productWidget extends StatelessWidget {
  const productWidget({
    super.key,
    required this.imagepath,
    required this.productname,
    required this.price,
    required this.durationText,
  });

  final String imagepath;
  final String productname;
  final String price;

  final String durationText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(10),
          boxShadow:  [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 2,
              offset: const Offset(0.2,0.2),
              color: Colors.grey.withOpacity(0.5),

            ),
          ]
        ),
        child: Row(
          children: [
            Expanded(

              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),

                child: Image(
                   width: 200,
                  height: 200,
                   fit: BoxFit.cover,
                  image: AssetImage(
                    imagepath,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30, bottom: 10),
                  child: Text(
                    productname,
                    style: const TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.timer),
                    Text(
                      durationText,
                      style: const TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color: Colors.black54,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                     Icon(
                      Icons.price_change_outlined,
                      color: primarycolor,
                    ),
                    Text(
                      price,
                      style:  TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color: primarycolor,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
