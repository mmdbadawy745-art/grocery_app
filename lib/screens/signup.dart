
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25.11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28.42),
              Center(child: Image.asset('assets/Group.png')),
              const SizedBox(height: 100.21),
              const Text('Sign Up', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Color(0xff181725))),
              const SizedBox(height: 15),
              const Text('Enter your credentials to continue', style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C))),
              TextFormField(
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
                decoration: const InputDecoration(labelText: 'Username', enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff2E2E2E))), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff53B175)))),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email), focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff53B175)))),
              ),
              const SizedBox(height: 30),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password', suffixIcon: Icon(Icons.visibility), enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff2E2E2E))), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff53B175)))),
              ),
              const SizedBox(height: 20),
              const Center(child: Text('By continuing you agree to our Terms and Service and Privacy Policy', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600))),
              const SizedBox(height: 30.03),
              InkWell(onTap: () {}, child: Container(padding: const EdgeInsets.symmetric(vertical: 25), width: double.infinity, decoration: BoxDecoration(borderRadius: BorderRadius.circular(19), color: const Color(0xff53B175)), child: const Center(child: Text('Sign Up', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0xffFFF9FF))))),),
              const SizedBox(height: 25),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Already have an account?  ', style: TextStyle(fontWeight: FontWeight.w600)), Text('Sign In', style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff53B175)))]),
            ],
          ),
        ),
      ),
    );
  }
  
}