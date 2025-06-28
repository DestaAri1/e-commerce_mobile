import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:marketplace/pages/home.dart';
import 'package:marketplace/pages/order.dart';
import 'package:marketplace/pages/profile.dart';
import 'package:marketplace/pages/wallet.dart';

class ButtonNav extends StatefulWidget {
  const ButtonNav({super.key});

  @override
  State<ButtonNav> createState() => _ButtonNavState();
}

class _ButtonNavState extends State<ButtonNav> {
  late List<Widget> pages;

  late Home HomePage;
  late Order OrderPage;
  late Wallet WalletPage;
  late Profile ProfilePage;

  int currentTabIndex = 0;

  @override
  void initState() {
    HomePage = Home();
    OrderPage = Order();
    WalletPage = Wallet();
    ProfilePage = Profile();

    pages = [HomePage, OrderPage, WalletPage, ProfilePage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTabIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        backgroundColor: Colors.white,
        color: Colors.red,
        animationDuration: Duration(microseconds: 200),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.shopping_bag, color: Colors.white, size: 30),
          Icon(Icons.wallet, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
