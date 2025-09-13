import 'package:flutter/material.dart';
import 'package:hillfair_app_frontend/widgets/uihelper.dart';

class Scribble extends StatefulWidget {
  const Scribble({super.key});

  @override
  State<Scribble> createState() => _ScribbleState();
}

class _ScribbleState extends State<Scribble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            UiHelper.CustomImage(img: "scribblebgimg.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
