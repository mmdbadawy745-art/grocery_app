

import 'package:flutter/material.dart';
import 'package:grocery_app/models/product_model.dart';

class ProductItem extends StatelessWidget {
   ProductModel product;

    ProductItem({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
                      
                width: 170,
                padding: EdgeInsets.only(top: 25,right: 15,left:15,bottom: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffE2E2E2), ),
                  borderRadius: BorderRadius.circular(18),
                  
                  ),
                  child: Column(
                
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Center(child: Image.asset(product.image),),
              
                      SizedBox(height: 25.26,),
              
                      Text(product.title,style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff181725)
                      ),),
              
                      SizedBox(height: 5,),
              
                      Text(product.des,style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff7C7C7C)
                      ),),
              
                      SizedBox(height: 36.8),
              
                        Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$ ${product.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff181725),
                    ),
                  ),
                   SizedBox(width: 46.52),
                   
                   Image.asset("assets/addicon.png",height: 30,width: 30,),
                ],
              ),
            ],
          ),
        );
  }
}
              
              
                  