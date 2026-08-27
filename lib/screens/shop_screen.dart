

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/home_search_field.dart';
import 'package:grocery_app/widgets/home_slider.dart';
import 'package:grocery_app/widgets/product_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  final int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.27),
      child: Column(
        children: [
          Center(
            child: Image.asset("assets/Group.png",width: 30,height: 30,),
          ),
          SizedBox(
            height: 7.6,
          ),
      
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.location_on),
              Text("Dhaka, Banassre", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, 
              color: Color(0xff4C4F4D))),
            ],
          ),
           SizedBox(
            height: 20,
          ),
          HomeSearchField(),
          SizedBox(
            height: 20,
          ),
          
          HomeSlider(),
          
          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Exclusive Offer",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xff181725),
                ),
              ),
              const SizedBox(width: 100),
              const Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff53B175),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          
          SizedBox(height: 270
          ,child: ListView.separated(itemBuilder: (context, index)=>ProductItem(
            price: 5.5 +index ,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
           separatorBuilder: ( context,  index)=>SizedBox(width: 10,)))
          
        ],
      ),
    );
  }
}


