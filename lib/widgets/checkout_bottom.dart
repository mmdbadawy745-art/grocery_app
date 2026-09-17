
import 'package:flutter/material.dart';

class CheckoutBottom extends StatelessWidget {
  const CheckoutBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle navigation to checkout
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF53B175), // Green color from the UI
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 40), // Balances the price width on the right
                    const Text(
                      'Go to Checkout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF489E67),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        '\$12.96',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
  
  }
}