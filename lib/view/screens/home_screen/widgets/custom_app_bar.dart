import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/consts/colors.dart';
import 'package:notes_app/view/widgets/custom_text.dart';

class CWAppBar extends StatelessWidget {
  const CWAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CWText(
          text: 'Notes',
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
              onPressed: (() {}),
              icon: Icon(
                Icons.search,
                color: kWhite,
                size: 28.sp,
              )),
        )
      ],
    );
  }
}
