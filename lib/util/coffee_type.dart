import 'dart:ui';
import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeName;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeeType(
      {required this.coffeeName,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeeName,
          style: TextStyle(
              fontFamily: 'oswald',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: isSelected ? Colors.orange : Colors.white),
          // style: TextStyle(
          //   fontWeight: FontWeight.bold,
          //   fontSize: 18,
          //   color:isSelected? Colors.orange : Colors.white
          // ),
        ),
      ),
    );
  }
}
