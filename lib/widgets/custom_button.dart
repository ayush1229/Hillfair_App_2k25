import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;

  /// Button text
  final String text;

  /// Text style
  final double fontSize;
  final Color textColor;

  /// Button styling
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;
  final Color borderColor;

  /// Optional icons
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color iconColor;
  final double iconSize;

  const CustomButton({
    super.key,
    required this.onPressed,
    this.text = "Button",
    this.fontSize = 21,
    this.textColor = Colors.black,
    this.width = 120,
    this.height = 48,
    this.borderRadius = 10,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.green,
    this.prefixIcon,
    this.suffixIcon,
    this.iconColor = Colors.green,
    this.iconSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[
              Icon(prefixIcon, color: iconColor, size: iconSize),
              const SizedBox(width: 4),
            ],
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (suffixIcon != null) ...[
              const SizedBox(width: 4),
              Icon(suffixIcon, color: iconColor, size: iconSize),
            ],
          ],
        ),
      ),
    );
  }
}

//Usage Examples:

//  Simple button

// CustomButton(
//   onPressed: () {},
//   text: "Add",
// ),

//  Custom colors & size

// CustomButton(
//   onPressed: () {},
//   text: "Submit",
//   backgroundColor: Colors.blue,
//   textColor: Colors.white,
//   width: 200,
//   height: 50,
// ),

//  With prefix icon

// CustomButton(
//   onPressed: () {},
//   text: "Upload",
//   prefixIcon: Icons.upload,
//   backgroundColor: Colors.grey[200]!,
//   borderColor: Colors.grey,
// ),

//  With suffix icon

// CustomButton(
//   onPressed: () {},
//   text: "Next",
//   suffixIcon: Icons.arrow_forward,
//   backgroundColor: Colors.amber,
// ),
