import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 38,
        width: screenWidth * 0.65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xff492D70),
            ),
          ),
        ),
      ),
    );
  }
}
