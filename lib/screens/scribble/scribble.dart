import 'package:flutter/material.dart';

class Scribble extends StatefulWidget {
  const Scribble({super.key});

  @override
  State<Scribble> createState() => _ScribbleState();
}

class _ScribbleState extends State<Scribble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("SCRIBBlE"),
    );
  }
}