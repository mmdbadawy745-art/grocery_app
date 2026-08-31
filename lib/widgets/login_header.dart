

import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 28.42,
        ),
        Center(child: Image.asset("assets/carrot.png")),
        SizedBox(
          height: 100.21,
        ),
        Text(
          "Login",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Color(0xff181725),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Enter your emails and password",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff7C7C7C),
          ),
        ),
      ],
    );
  }
}