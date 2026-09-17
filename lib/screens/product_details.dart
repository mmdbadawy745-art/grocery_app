

import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1; // Initial quantity value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false, 
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.ios_share, size: 22),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        'assets/Vector.png',
                        height: 180,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.apple, size: 150, color: Colors.red);
                        },
                      ),
                    ),
    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 15,
                          height: 4,
                          decoration: BoxDecoration(
                            color: const Color(0xFF53B175),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 5,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Naturel Red Apple',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite_border, color: Colors.black54),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const Text(
                      '1kg, Price',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 25),

                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove, color: Colors.grey),
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() => quantity--);
                                }
                              },
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '$quantity',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add, color: Color(0xFF53B175)),
                              onPressed: () {
                                setState(() => quantity++);
                              },
                            ),
                          ],
                        ),
                        const Text(
                          '\$4.99',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(height: 1),
                    const SizedBox(height: 10),

                    Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: const ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          'Product Detail',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthy and varied diet.',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),

                
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        'Nutritions',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              '100g',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),

                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        'Review',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         Icon(Icons.star, color: Color(0xFFF3603F), size: 18),
                         Icon(Icons.star, color: Color(0xFFF3603F), size: 18),
                         Icon(Icons.star, color: Color(0xFFF3603F), size: 18),
                         Icon(Icons.star, color: Color(0xFFF3603F), size: 18),
                         Icon(Icons.star, color: Color(0xFFF3603F), size: 18),

                         SizedBox(width: 8),
                         Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black87),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                    
                    InkWell(
            onTap: () {
              
              print("on tap");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Color(0xff53B175)
              ),
              child: Center(child: Text("Add To Basket",style: 
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Color(0xffFFF9FF)
              ),),),
            ),
          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}