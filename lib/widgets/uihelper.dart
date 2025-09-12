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
}

