import 'package:flutter/material.dart';
import 'package:hillfair_app_frontend/screens/scribble/createRoom.dart';
import 'package:hillfair_app_frontend/screens/scribble/joinRoom.dart';
import 'package:hillfair_app_frontend/widgets/custom_button.dart';
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
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset("assets/images/scribblebgimg.png").image,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [UiHelper.CustomImage(img: "pencilimg.png")],
              ),
              UiHelper.CustomImage(img: "scribbletext.png"),
              SizedBox(height: 43),
              UiHelper.CustomText(
                text: "Let's Play!",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 45,
                fontfamily: "bold",
              ),
              UiHelper.CustomText(
                text: "Play now and Level up",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontsize: 24,
              ),

              SizedBox(height: 45),

              CustomButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Createroom()));
                },
                width: 340,
                height: 64,
                borderRadius: 50,
                backgroundColor: Color.fromARGB(255, 217, 217, 217),
                borderColor: Color(0xff7A7A7A),
                text: "Create Room",
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 13.1,
                    offset: Offset(3, 6),
                    spreadRadius: 4,
                  ),
                ],
              ),

              SizedBox(height: 42),

              CustomButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const JoinRoom()));
                },
                width: 340,
                height: 64,
                borderRadius: 50,
                backgroundColor: Color.fromARGB(255, 217, 217, 217),
                borderColor: Color(0xff7A7A7A),
                text: "Join Room",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
