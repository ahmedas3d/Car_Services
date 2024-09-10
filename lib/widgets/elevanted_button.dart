import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.onTap,
    required this.title,
    required this.size,
    required this.horizontal,
    required this.vertical,
    required this.textColor,
  });

  final double size;
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback onTap;
  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(
            vertical: vertical,
            horizontal: horizontal,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
