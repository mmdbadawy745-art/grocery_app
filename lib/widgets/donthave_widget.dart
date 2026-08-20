

import 'package:flutter/material.dart';

class DonthaveWidget extends StatelessWidget {
  const DonthaveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Don't have an account?  ",style: TextStyle(
              fontWeight: FontWeight.w600
            ),),
            Text("Sign UP",style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff53B175)
            ),),
          ],);
}
}