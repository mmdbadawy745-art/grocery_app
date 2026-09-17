
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/favorite_item_widget.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: const [
                  FavouriteItemWidget(
                    title: 'Sprite Can',
                    subtitle: '325ml, Price',
                    price: '\$1.50',
                    imagePath: 'assets/1.png', 
                  ),
                  Divider(indent: 20, endIndent: 20, height: 40),
                  FavouriteItemWidget(
                    title: 'Diet Coke',
                    subtitle: '355ml, Price',
                    price: '\$1.99',
                    imagePath: 'assets/2.png',
                  ),
                  Divider(indent: 20, endIndent: 20, height: 40),
                  FavouriteItemWidget(
                    title: 'Apple & Grape Juice',
                    subtitle: '2L, Price',
                    price: '\$15.50',
                    imagePath: 'assets/3.png',
                  ),
                  Divider(indent: 20, endIndent: 20, height: 40),
                  FavouriteItemWidget(
                    title: 'Coca Cola Can',
                    subtitle: '325ml, Price',
                    price: '\$4.99',
                    imagePath: 'assets/4.png',
                  ),
                  Divider(indent: 20, endIndent: 20, height: 40),
                  FavouriteItemWidget(
                    title: 'Pepsi Can',
                    subtitle: '330ml, Price',
                    price: '\$4.99',
                    imagePath: 'assets/5.png',
                  ),
                  Divider(indent: 20, endIndent: 20, height: 40),
                ],
              ),
            ),
          ],
        ),
      );
  }
}

