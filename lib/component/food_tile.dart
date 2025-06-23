import 'package:flutter/material.dart';
import 'package:marketplace/services/widget_support.dart';

class FoodTile extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  const FoodTile({
    super.key,
    required this.name,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
            bottom: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  image,
                  height: 150,
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
              Text(name, style: AppWidget.boldTextFieldStyle(Colors.black, 15)),
              Text(
                "\$$price",
                style: AppWidget.boldTextFieldStyle(
                  Color.fromARGB(174, 0, 0, 0),
                  16,
                ),
              ), // beri ruang untuk icon
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 40,
            width: 60,
            decoration: const BoxDecoration(
              color: Color(0xffef2b39),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: const Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
