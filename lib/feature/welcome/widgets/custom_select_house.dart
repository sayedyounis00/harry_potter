
import 'package:flutter/material.dart';

class ChooseHouseCircule extends StatelessWidget {
  const ChooseHouseCircule({
    super.key,
    required this.imagePath,
    required this.onTap,
    required this.bordercolor,
    required this.color,
  });
  final String imagePath;

  final Color color;
  final Color bordercolor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: bordercolor, width: 3),
            color: color),
        child: Image.asset(imagePath),
      ),
    );
  }
}