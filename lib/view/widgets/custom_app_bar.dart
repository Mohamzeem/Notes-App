import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/colors.dart';
import '../screens/home_screen/home_screen.dart';
import 'custom_text.dart';

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
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Colors.cyan,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan, elevation: 10),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
                backgroundColor: kBlack.withOpacity(0.9),
                context: context,
                builder: ((context) {
                  return const CWAddNoteBottomSheet();
                }));
          },
          child: const CWText(
              text: 'New Note',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: kWhite),
        ),
      ],
    );
  }
}
