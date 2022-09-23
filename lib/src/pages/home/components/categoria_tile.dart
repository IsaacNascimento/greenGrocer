import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_color.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  const CategoryTile(
      {super.key,
      required this.category,
      required this.isSelected,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
            color: isSelected
                ? CustomColors.customSwatchColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            category,
            style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : CustomColors.customContrastColor,
                fontWeight: FontWeight.bold,
                fontSize: isSelected ? 16 : 14),
          ),
        ),
      ),
    );
  }
}
