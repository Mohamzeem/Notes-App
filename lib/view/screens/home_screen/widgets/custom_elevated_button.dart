part of '../home_screen.dart';

class CWElevatedButton extends StatelessWidget {
  const CWElevatedButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: kMainColor,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: const CWText(
          text: 'Add Note',
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: kBlack),
    );
  }
}
