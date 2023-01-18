import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../consts/colors.dart';
import '../home_screen.dart';
import '../../../widgets/custom_text.dart';

class CWNotesAppBar extends StatelessWidget {
  const CWNotesAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CWText(
          text: 'Notes',
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Colors.cyan,
        ),
        ElevatedButton.icon(
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
              }),
            );
          },
          icon: const Icon(Icons.add),
          label: const CWText(
            text: 'New Note',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: kWhite,
          ),
        ),
      ],
    );
  }
}
