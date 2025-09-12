import 'package:flutter/material.dart';
import 'package:hillfair_app_frontend/screens/Auth/signin.dart';

void main() {                             // 2. Entry point of the app
  runApp(const MyApp());                   // 3. Run your root widget
}

class MyApp extends StatelessWidget {      // 4. Root widget of the app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Signin(),
    );
  }
}
