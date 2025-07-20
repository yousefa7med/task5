import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_screen/widgets/blue_container.dart';
import 'package:otp_screen/widgets/costum_bottom.dart';

class otpScreen extends StatelessWidget {
  const otpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlueContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Text(
              "أدخل رمز التحقق OTP",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "لقد ارسلنا الكود الخاص بك الب 000*****010",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              "سينتهي هذ الكود  في 00:30",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 12),
            OtpTextField(numberOfFields: 6, showFieldAsBox: true, filled: true),
            Spacer(flex: 1),

            Bottom(
              onPressed: () {
                Navigator.pop(context);
              },
              text: "تأكيد",
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
