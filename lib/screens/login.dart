
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/donthave_widget.dart';
import 'package:grocery_app/widgets/login_form.dart';
import 'package:grocery_app/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeader(),
              LoginForm(),
              CustomButton(),
              SizedBox(height: 25,),
              DonthaveWidget()
            ],
          ),
        ),
      ),
    );
  }
}