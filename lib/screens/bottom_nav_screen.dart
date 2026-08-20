

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account_screen.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/screens/explore_screen.dart';
import 'package:grocery_app/screens/favorite_screen.dart';
import 'package:grocery_app/screens/shop_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[currentIndex]),
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          
        },
        backgroundColor: const Color(0xffFFFFFF),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff53B175),
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.storefront), label: "shop"),
          BottomNavigationBarItem(icon: const Icon(Icons.manage_search), label: "explore"),
          BottomNavigationBarItem(icon: const Icon(Icons.shopping_cart_outlined), label: "cart"),
          BottomNavigationBarItem(icon: const Icon(Icons.favorite_outline_outlined), label: "favorite"),
          BottomNavigationBarItem(icon: const Icon(Icons.person_3_outlined), label: "account"),
        ],
      ),
    );
  }
}