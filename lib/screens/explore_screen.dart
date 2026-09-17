

import 'package:flutter/material.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Find Products',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Store',
                    hintStyle: TextStyle(color: Color(0xFF7C7C7C)),
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              GridView.builder(
                shrinkWrap: true, 
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 15, 
                  mainAxisSpacing: 15, 
                  childAspectRatio: 0.9, 
                ),
                itemBuilder: (context, index) {
                  final item = categories[index];
                  return Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: item.backgroundColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: item.borderColor, width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            item.image,
                            fit: BoxFit.contain,
                        
                          ),
                        ),


                        const SizedBox(height: 15),
                        Text(
                          item.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

final List<CategoryItem> categories = [
      CategoryItem(
        title: 'Fresh Fruits\n& Vegetable',
        image: 'assets/fresh fruits.png',
        backgroundColor: const Color(0xFFEEF7F1),
        borderColor: const Color(0xFF53B175)
      ),
      CategoryItem(
        title: 'Cooking Oil\n& Ghee',
        image: 'assets/cooking oil.png',
        backgroundColor: const Color(0xFFFFF6EE),
        borderColor: const Color(0xFFF8A44C)
      ),
      CategoryItem(
        title: 'Meat & Fish',
        image: 'assets/meat.png',
        backgroundColor: const Color(0xFFFDE9E9),
        borderColor: const Color(0xFFF7A593)
      ),
      CategoryItem(
        title: 'Bakery & Snacks',
        image: 'assets/bakery.png',
        backgroundColor: const Color(0xFFF4EBF7),
        borderColor: const Color(0xFFD3B0E0)
      ),
      CategoryItem(
        title: 'Dairy & Eggs',
        image: 'assets/egg.png',
        backgroundColor: const Color(0xFFFFF9E5),
        borderColor: const Color(0xFFFDE598)
      ),
      CategoryItem(
        title: 'Beverages',
        image: 'assets/beverages.png',
        backgroundColor: const Color(0xFFEDF7FC),
        borderColor: const Color(0xFFB7DFF5)
      ),
    ];


class CategoryItem {
  const CategoryItem({
    required this.title,
    required this.image,
    required this.backgroundColor,
    required this.borderColor,
  });

  final String title;
  final String image;
  final Color backgroundColor;
  final Color borderColor;
}