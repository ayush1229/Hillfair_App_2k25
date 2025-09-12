import 'package:flutter/material.dart';
import 'package:hillfair_app_frontend/widgets/custom_button.dart';
import 'package:hillfair_app_frontend/widgets/uihelper.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(img: "signupimg.png"),
            ],
          ),
          SizedBox(height: 20,),
          CustomButton(onPressed: (){}, height: 370, text: "help!",)
        ],
      )
    );
  }
}

