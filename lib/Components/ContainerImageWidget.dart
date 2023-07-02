import 'package:flutter/material.dart';
class ContainerImageWidget extends StatelessWidget {
  const ContainerImageWidget({
  super.key,
  required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0.2, 0.2),
            color: Colors.grey.withOpacity(0.5),
          )
        ],
      ),
      child: ClipRRect(

        borderRadius: BorderRadius.circular(10),
        child:  Image(
          width: double.infinity,

          fit: BoxFit.cover,
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
    );
  }
}
