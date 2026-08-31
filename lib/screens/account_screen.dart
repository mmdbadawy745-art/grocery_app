

import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/account_info.dart';
import 'package:grocery_app/widgets/account_options.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [

          AccountInfo(),
          SizedBox(height: 30,),
          Divider(),
          AccountOptions(
            icon: Icons.breakfast_dining_outlined,
            text: "Orders",
          ),
          AccountOptions(
            icon: Icons.details_outlined,
            text: "My details",
          ),
          AccountOptions(
            icon: Icons.payment_outlined,
            text: "Payment methods",
          ),
          AccountOptions(
            icon: Icons.control_point_duplicate_rounded,
            text: "Promo code",
          ),
          AccountOptions(
            icon: Icons.notification_important_outlined,
            text: "Notifications",
          ),
          AccountOptions(
            icon: Icons.help_center_outlined,
            text: "Help",
          ),
          AccountOptions(
            icon: Icons.info_outline,
            text: "About",
          ),
          const SizedBox(height: 52.23),
          InkWell(
            onTap: () {
              // ignore: avoid_print
              print("on tap");
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: const Color(0xffF2F3F2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.logout,
                    color: Color(0xff53B175),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff53B175),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}