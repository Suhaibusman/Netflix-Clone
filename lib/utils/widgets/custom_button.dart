import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/utils/themes/color_themes.dart';
import 'package:netflix_clone/utils/widgets/text_widget.dart';

class CustomButton extends StatelessWidget {
  final double? buttonWidth;
  final double buttonHeight;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  final String buttontext;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final bool loading;
  final String? image;
  // Added property for border width
  // Added property for border color

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.buttontext,
    this.buttonColor,
    this.buttonWidth,
    this.buttonHeight = 44.0,
    this.loading = false,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.w600,
    this.textColor = Colors.white,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? primarycolor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: buttonWidth ?? Get.width,
        height: buttonHeight,
        child: Center(
          child: ctext(
              text: buttontext,
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}
