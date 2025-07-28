import 'package:flutter/material.dart';
import 'package:otp_screen/views/login_screen.dart';
import 'package:otp_screen/core/theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen(),theme: AppTheme.lightTheme,);
  }
}
