
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       InkWell(
            onTap: () {
              // ignore: avoid_print
              print("on tap");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Color(0xff53B175)
              ),
              child: Center(child: Text("Login",style: 
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Color(0xffFFF9FF)
              ),),),
            ),
          );
  }
}