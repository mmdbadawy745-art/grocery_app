

import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/add_all_to_cart.dart';
import 'package:grocery_app/widgets/favorite_list.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Favorurite', 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Divider(color: Colors.grey.shade200, height: 1.0),
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(child: FavoriteList()),
            AddAllToCart(), 
          ],
        ),
      ),
    );
  }
}