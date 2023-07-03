import 'package:flutter/material.dart';

import '../utilis/colors.dart';

class ElevatedButtonWidget extends StatefulWidget {
  ElevatedButtonWidget({
    super.key,
    required this.buttonText,
    this.foregroundcolor,
    this.backgroundcolor,
    required this.onpressed,
    this.verticalpadding=12,
    this.horizantalpadding=40,
  });

  Color? foregroundcolor = Colors.white;
  Color? backgroundcolor = primaryColor;
  final String buttonText;
  final VoidCallback onpressed;
  double horizantalpadding = 40;
  double verticalpadding = 12;

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: widget.foregroundcolor,
        backgroundColor: widget.backgroundcolor,
        // Set the text color
        padding:EdgeInsets.symmetric(
            horizontal: widget.horizantalpadding, vertical: widget.verticalpadding),
        // Set padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Set border radius
        ),
      ),
      onPressed: widget.onpressed,
      child: Text(
        widget.buttonText,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto",
        ),
      ),
    );
  }
}
