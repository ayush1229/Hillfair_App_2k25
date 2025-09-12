import 'package:flutter/material.dart';

// usage example: UiHelper.CustomImage("imagename.png")
class UiHelper {

  static Image CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static Text CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  static Container CustomButton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text("Add", style: TextStyle(fontSize: 6, color: Colors.green)),
      ),
    );
  }
}

