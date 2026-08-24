

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/home_search_field.dart';
import 'package:grocery_app/widgets/home_slider.dart';
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

          Row(
            children: [
              Container(
                      
                width: 173,
                padding: EdgeInsets.only(top: 25,right: 15,left: 15,bottom: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffE2E2E2), ),
                  borderRadius: BorderRadius.circular(18),
                  
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Center(child: Image.asset("assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png")),
              
                      SizedBox(height: 25.26,),
              
                      Text("Organic Bananas",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff181725)
                      ),),
              
                      SizedBox(height: 5,),
              
                      Text("7pcs, Priceg",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff7C7C7C)
                      ),),
              
                      SizedBox(height: 36.8),
              
                        Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$4.99",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff181725),
                    ),
                  ),
                   SizedBox(width: 46.52),
                   
                   Image.asset("assets/Group 6813.png",height: 30,width: 30,),
                ],
              ),
              
              
                      
                      ],
                    ),
                    ),

                  SizedBox(width: 15.18,),
                     Container(
                      
                width: 173,
                padding: EdgeInsets.only(top: 25,right: 15,left: 15,bottom: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffE2E2E2), ),
                  borderRadius: BorderRadius.circular(18),
                  
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Center(child: Image.asset("assets/pngfuel 1.png")),
              
                      SizedBox(height: 25.26,),
              
                      Text("Red Apple",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff181725)
                      ),),
              
                      SizedBox(height: 5,),
              
                      Text("1kg, Priceg",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff7C7C7C)
                      ),),
              
                      SizedBox(height: 36.8),
              
                        Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$4.99",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff181725),
                    ),
                  ),
                   SizedBox(width: 46.52),
                   
                   Image.asset("assets/Group 6813.png",height: 30,width: 30,),
                ],
              ),
                      ],
                    ),
                    ),
            ],
          )
        ],
      ),
    );
  }
}


