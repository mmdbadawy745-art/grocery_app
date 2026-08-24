


import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
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
            );
  }
}