import 'package:flutter/material.dart';

class textRow extends StatelessWidget {
  const textRow({
    super.key,
    required this.unClickableText,
    required this.clickableText,
    required this.onTap,
    this.clickableTextColor,
  });
  final String unClickableText;
  final String clickableText;
  final void Function() onTap;
  final Color? clickableTextColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          unClickableText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          
          onTap: onTap,
          child: Text(
            clickableText,
            style: TextStyle(
              color: clickableTextColor ?? Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
