import 'package:flutter/material.dart';
import 'package:otp_screen/views/login_screen.dart';
import 'package:otp_screen/widgets/blue_container.dart';
import 'package:otp_screen/widgets/costum_bottom.dart';
import 'package:otp_screen/widgets/costum_text_field.dart';
import 'package:otp_screen/widgets/text_row.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlueContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Text(
              "Signup",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(flex: 1),

            CostumTextField(hintText: "Email", prefixIcon: Icons.email),
            CostumTextField(hintText: "Password", prefixIcon: Icons.password),
            CostumTextField(
              hintText: "Confirm Password",
              prefixIcon: Icons.password,
            ),

            Spacer(flex: 1),

            Bottom(text: "Signup", onPressed: () {}),
            SizedBox(height: 10),
            textRow(
              unClickableText: "Already Have an Account?  ",
              clickableText: "Login",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
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
