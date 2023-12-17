// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore_for_file: prefer_const_constructors
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    //required this.containercolor,
    required this.buttontext,
    this.onPressed,
    required this.width,
    required this.height,
    this.mode,
    required this.bordercolor,
    required this.borderradius,
    required this.fontsize,
    required this.fontweight,
    required this.fontcolor,
    this.icon,
    this.iconColor,
    this.cardStyle,
  });
  final String buttontext;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final String? mode;
  final Color bordercolor;
  //final Color containercolor;
  final double borderradius;
  final double fontsize;
  final FontWeight fontweight;
  final Color fontcolor;
  final IconData? icon;
  final Color? iconColor;
  final String? cardStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: bordercolor,
          shape: RoundedRectangleBorder(
            borderRadius: cardStyle == null
                ? BorderRadius.circular(borderradius)
                : BorderRadius.only(
                    bottomLeft: Radius.circular(borderradius),
                    bottomRight: Radius.circular(borderradius),
                  ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttontext,
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(
                  color: fontcolor,
                  letterSpacing: .5,
                  fontWeight: fontweight,
                  fontSize: fontsize,
                ),
              ),
            ),
            if (icon != null)
              Icon(
                icon,
                color: iconColor,
              ),
          ],
        ),
      ),
    );
  }
}
