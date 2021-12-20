import 'package:flutter/material.dart';
import 'package:saving_app/homescreen.dart';
import 'package:saving_app/main.dart';
import 'mainscreen.dart';
import 'theme.dart';
import 'widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset('assets/onboarding.png'),
            ),
            SizedBox(height: 26),
            Container(
              padding:
                  EdgeInsets.only(top: 33, bottom: 30, left: 30, right: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: semiboldTextStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'welcome to Fleet Finance, the easy way\nto improve your finances and help you\ncontrol expenses and income',
                    style: mediumTextStyle.copyWith(
                      fontWeight: FontWeight.w200,
                      fontSize: 13,
                      color: Color(0xff868686),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    width: 153,
                    height: 50,
                    color: kBlue,
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
