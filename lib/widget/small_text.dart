import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight weight;
  double height =1.2;
  SmallText({super.key,required this.weight ,this.color = Colors.black ,required this.text,this.size=12,this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      height: height,
      ),
    );
  }
}