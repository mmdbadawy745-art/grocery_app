

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
   double price;
   ProductItem({super.key,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
                      
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
                    "\$ $price",
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
        );
  }
}
              
              
                  