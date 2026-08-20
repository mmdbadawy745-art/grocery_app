

import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

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
         
         
          TextFormField(
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              fillColor: Color(0xffF2F3F2),
              filled: true,
              hintText: "Search Store",
              prefixIcon: Padding(padding: EdgeInsets.only(left: 20),
              child: Icon(Icons.search)),
              prefixIconConstraints: BoxConstraints(
                minWidth: 25,
                minHeight: 25,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
            ),
        
        ],
      ),
    );
  }
}