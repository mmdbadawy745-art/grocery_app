

import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width:64 ,
          height: 64,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover
              ,image: Image.asset("assets/profile_image.png").image)
          ),
        ),
        SizedBox(width: 20,),


        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Afsar Hossen",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400
            ) ,),

            Text("Imshuvo97@gmail.com",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color(0xff7C7C7C)
            ),)
          ],
        )
        
      ],
    );
  }
}