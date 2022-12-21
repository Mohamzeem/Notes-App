import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../consts/colors.dart';
import 'custom_note_buttom_sheet.dart';

class CWFloatingButton extends StatelessWidget {
  const CWFloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.cyan,
      onPressed: () {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r)),
            backgroundColor: kBlack.withOpacity(0.9),
            context: context,
            builder: ((context) {
              return const CWAddNoteBottomSheet();
            }));
      },
      child: Icon(
        Icons.add,
        size: 35.r,
        color: kBlack,
      ),
    );
  }
}
