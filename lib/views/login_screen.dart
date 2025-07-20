import 'package:flutter/material.dart';
import 'package:otp_screen/views/Otp_Screen.dart';
import 'package:otp_screen/views/signup_screen.dart';
import 'package:otp_screen/widgets/blue_container.dart';
import 'package:otp_screen/widgets/costum_bottom.dart';
import 'package:otp_screen/widgets/costum_text_field.dart';
import 'package:otp_screen/widgets/text_row.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlueContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Text(
              "LogIn",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(flex: 1),

            CostumTextField(hintText: "Email", prefixIcon: Icons.email),
            CostumTextField(hintText: "Password", prefixIcon: Icons.password),

            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => otpScreen()),
                  );
                },
                child: Text(
                  "Forgot Your Password ?",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            Spacer(flex: 1),

            Bottom(text: "Login", onPressed: () {}),
            SizedBox(height: 10),
            textRow(
              unClickableText: "Don't Have Account?  ",
              clickableText: "Sign Up",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
