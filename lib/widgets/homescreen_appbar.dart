import 'package:flutter/material.dart';
import 'package:otp_screen/core/const.dart';
import 'package:otp_screen/widgets/ProfileAvatar.dart';

class HomescreenAppbar extends StatelessWidget {
  const HomescreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [ProfileAvatar(img: kAvatar), Icon(Icons.menu)],
        ),
      ),
    );
  }
}
