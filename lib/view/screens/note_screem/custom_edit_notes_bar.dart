// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/consts/colors.dart';
import '../../widgets/custom_text.dart';

class CWEditNoteAppBar extends StatelessWidget {
  const CWEditNoteAppBar({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CWText(
          text: 'Edit Notes',
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Colors.cyan,
        ),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
              color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.done,
              color: kWhite,
              size: 25,
            ),
          ),
        )
      ],
    );
  }
}
// / const CWText(
//             text: 'New Note',
//             fontSize: 16,
//             fontWeight: FontWeight.w600,
//             color: kWhite,
//           ),