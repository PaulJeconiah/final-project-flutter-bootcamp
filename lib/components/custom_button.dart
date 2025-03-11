import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.mainColor,
    this.text,
    this.textColor,
    this.borderColor,
    this.borderWidth,
  });

  final Color? mainColor;
  final String? text;
  final Color? textColor;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      // width: 354,
      decoration: BoxDecoration(
        color: mainColor ?? Colors.blue,
        borderRadius: BorderRadius.circular(30),
        // border: Border.all(
        //   color: borderColor ?? Colors.blue,
        //   width: borderWidth ?? 2,
        // ),
      ),
      child: Center(
        child: Text(
          text ?? "Masuk",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
