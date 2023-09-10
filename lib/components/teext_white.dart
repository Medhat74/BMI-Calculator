import 'package:flutter/material.dart';

class TextWhite extends StatelessWidget {

  final String text;
  final bool  isBold;
  final double size;

  TextWhite({required this.text,required this.size,required this.isBold});

  @override
  Widget build(BuildContext context) {
    return Text(text ,
      style: TextStyle(
        color: Colors.white, fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),);
  }
}
