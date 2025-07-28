import 'package:flutter/material.dart';

class NavBottom extends StatelessWidget {
  const NavBottom({super.key, required this.icon, required this.caption});
  final IconData icon;
  final String caption;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 70, color: Colors.black),
        Text(
          caption,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
