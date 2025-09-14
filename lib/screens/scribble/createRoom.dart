import 'package:flutter/material.dart';
import 'package:hillfair_app_frontend/widgets/custom_button.dart';
import 'package:hillfair_app_frontend/widgets/custom_text_field.dart';
import 'package:hillfair_app_frontend/widgets/uihelper.dart';

class Createroom extends StatefulWidget {
  const Createroom({super.key});

  @override
  State<Createroom> createState() => _CreateroomState();
}

class _CreateroomState extends State<Createroom> {
  TextEditingController nameController = TextEditingController();
  TextEditingController roomController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    roomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset("assets/images/scribblebgimg.png").image,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 169),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                  text: "Create Room",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 52,
                  fontfamily: "bold",
                ),
              ],
            ),

            SizedBox(height: 72),

            CustomTextField(
              controller: nameController,
              hintText: "Enter your Name",
              hintFontWeight: FontWeight.w200,
            ),

            SizedBox(height: 25),

            CustomTextField(
              controller: roomController,
              hintText: "Enter Room Name",
              hintFontWeight: FontWeight.w200,
            ),

            SizedBox(height: 206),

            CustomButton(
              onPressed: () {},
              text: "Create",
              width: 340,
              height: 64,
              borderRadius: 50,
              backgroundColor: Color.fromARGB(255, 217, 217, 217),
              borderColor: Color(0xff7A7A7A),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  blurRadius: 13.1,
                  offset: Offset(3, 6),
                  spreadRadius: 4,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
