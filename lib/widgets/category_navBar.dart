import 'package:flutter/material.dart';
import 'package:otp_screen/widgets/nav_bottom.dart';

class CategoryNavbar extends StatelessWidget {
  const CategoryNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBottom(icon: Icons.weekend, caption: "Sofas"),
          NavBottom(icon: Icons.inventory, caption: "Wardrobe"),
          NavBottom(icon: Icons.work, caption: "desk"),
          NavBottom(icon: Icons.chair_alt, caption: "dresser"),
        ],
      ),
    );
  }
}
