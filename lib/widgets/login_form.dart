

import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
                onTapUpOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  labelText: "Email",
                  prefix: Icon(Icons.email),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xff2E2E2E),
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff53B175),
                    ),
                  )


                  )

                ),

              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  suffix: Icon(Icons.visibility),
                   enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xff2E2E2E),
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff53B175),
                    ),

              )

          )
          ),
          SizedBox(height: 20,),


          Align(
            alignment: Alignment.centerRight,
            child: Text("Forget password?",style: TextStyle(
              color: Color(0xff181725),


            ),),
          ),
          SizedBox( height: 30,),
      ],
    );
  }
}