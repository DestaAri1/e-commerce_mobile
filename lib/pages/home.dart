import 'package:flutter/material.dart';
import 'package:marketplace/services/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[_homeLogo(), _userPicture()],
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(color: Color(0xFFececf8)),
              child: TextField(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _homeLogo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: 50,
          width: 130,
          fit: BoxFit.contain,
        ),
        Text(
          "Order your favourite food!",
          style: AppWidget.simpleTextFieldStyle(),
        ),
      ],
    );
  }

  Widget _userPicture() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/images/boy.jpg",
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
