import 'package:flutter/material.dart';
import 'package:otp_screen/core/const.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 28,
      child: CircleAvatar(radius: 24, backgroundImage: AssetImage(img)),
    );
  }
}
