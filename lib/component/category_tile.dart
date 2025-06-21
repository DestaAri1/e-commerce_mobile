import 'package:flutter/material.dart';
import 'package:marketplace/services/widget_support.dart';

class CategoryTile extends StatelessWidget {
  final String name;
  final String image;
  final String categoryIndex;
  final String selectedIndex;
  final VoidCallback onTap;

  const CategoryTile({
    super.key,
    required this.name,
    required this.image,
    required this.categoryIndex,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedIndex == categoryIndex;
    final Color bgColor = isSelected ? const Color(0xFFef2b39) : const Color(0xFFececf8);
    final TextStyle textStyle = isSelected
        ? AppWidget.whiteTextFieldStyle()
        : AppWidget.simpleTextFieldStyle(15);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 15, bottom: isSelected ? 5 : 0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ]
              : [],
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Image.asset(
                image,
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
            Text(name, style: textStyle),
          ],
        ),
      ),
    );
  }
}
