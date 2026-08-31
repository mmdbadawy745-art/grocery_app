

import 'package:flutter/material.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({super.key, required this.text, required this.icon});

final String text;
final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        Row(
          children: [
            Icon(icon),
            const SizedBox(width: 20.49,),
            Expanded(
              child: Text(text,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
            ),
             Icon(Icons.arrow_forward_ios,size: 17,),
          ],
        ),
        SizedBox(height: 15,),
       
        Divider()
      ],
      
    );
    
  }
}