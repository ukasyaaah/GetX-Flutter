import 'package:flutter/material.dart';

class Tebu extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color? textColor;
  final Function()? onPressed;

  const Tebu({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor,
    required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(13),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        backgroundColor: bgcolor,
      ),
    );
  }
}
