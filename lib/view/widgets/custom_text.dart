import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CWText extends StatelessWidget {
  const CWText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      required this.color,
      this.textDecoration,
      this.maxLines,
      this.heightText,
      this.textAlign})
      : super(key: key);
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final double? heightText;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: color,
        decoration: textDecoration,
        height: heightText,
      ),
    );
  }
}
