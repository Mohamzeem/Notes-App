// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/consts/colors.dart';
import 'package:notes_app/view/widgets/custom_text.dart';

class CWAppBar extends StatelessWidget {
  const CWAppBar({
    Key? key,
    required this.icon,
    required this.text,
    this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CWText(
          text: text,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: kWhite,
        ),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: kWhite,
                size: 28.r,
              )),
        )
      ],
    );
  }
}
