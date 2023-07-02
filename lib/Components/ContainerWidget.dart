import 'package:flutter/material.dart';
import 'package:food_desing/Components/ElevatedButtonWidget.dart';
import 'package:food_desing/utilis/colors.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required String image_path,
    required String productname,
    required VoidCallback onpressed,
  })  : _image_path = image_path,
        _onpressed = onpressed,
        _productname = productname;

  final String _image_path;
  final String _productname;
  final VoidCallback _onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        onTap: _onpressed,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 1,
                offset: const Offset(0.2, 0.2),
                color: Colors.grey.withOpacity(0.5),
              ),
            ],
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      gradient: kgradient,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        fit: BoxFit.cover,
                        height: 150,
                        width: double.infinity,
                        image: AssetImage(
                          _image_path,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      Icons.favorite_outline,
                      color: primarycolor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                _productname,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: ElevatedButtonWidget(
                    onpressed: () {},
                    buttonText: "Cart",
                    backgroundcolor: primarycolor,
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
