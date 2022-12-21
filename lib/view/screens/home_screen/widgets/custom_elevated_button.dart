import 'package:flutter/material.dart';
import '../../../../consts/colors.dart';
import '../../../widgets/custom_text.dart';

class CWElevatedButton extends StatelessWidget {
  const CWElevatedButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: kMainColor,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {},
      child: const CWText(
          text: 'Add Note',
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: kBlack),
    );
  }
}
