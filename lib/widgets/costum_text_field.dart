import 'package:flutter/material.dart';

class CostumTextField extends StatelessWidget {
  const CostumTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });
  final String hintText;
  final IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x000000ff)),
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 18),
          prefixIconColor: Color(0xff877986),
          prefixIcon: Icon(prefixIcon, size: 28),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
