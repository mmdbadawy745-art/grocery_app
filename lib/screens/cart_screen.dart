
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/cart_item.dart';
import 'package:grocery_app/widgets/checkout_bottom.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Divider(color: Colors.grey.shade200, height: 1.0),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            


            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: const [
                  CartItemWidget(
                    title: 'Bell Pepper Red',
                    subtitle: '1kg, Price',
                    price: '\$4.99',
                    imagePath: 'assets/cart1.png', 
                  ),
                  Divider(indent: 20, endIndent: 20, height: 1),
                  CartItemWidget(
                    title: 'Egg Chicken Red',
                    subtitle: '4pcs, Price',
                    price: '\$1.99',
                    imagePath: 'assets/cart2.png',
                  ),
                  Divider(indent: 20, endIndent: 20, height: 1),
                  CartItemWidget(
                    title: 'Organic Bananas',
                    subtitle: '12kg, Price',
                    price: '\$3.00',
                    imagePath: 'assets/cart3.png',
                  ),
                  Divider(indent: 20, endIndent: 20, height: 1),
                  CartItemWidget(
                    title: 'Ginger',
                    subtitle: '250gm, Price',
                    price: '\$2.99',
                    imagePath: 'assets/cart4.png',
                  ),
                  Divider(indent: 20, endIndent: 20, height: 1),
                ],
              ),
            ),
            const CheckoutBottom(),
          ],
        ),
      ),
    );
  }
}




