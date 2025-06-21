import 'package:flutter/material.dart';
import 'package:marketplace/services/widget_support.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Image.asset("assets/images/onboard.png"),
            SizedBox(height: 20),
            Text(
              "The Fastes\nFood Delivery",
              style: AppWidget.headlineTextFieldStyle(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "Craving something delicious?\nOrder noe and get your favorites\ndelivered fast!",
              style: AppWidget.simpleTextFieldStyle(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Color(0xff8c592a),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
