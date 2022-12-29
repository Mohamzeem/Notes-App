part of '../home_screen.dart';

class CWElevatedButton extends StatelessWidget {
  const CWElevatedButton({
    Key? key,
    this.onPressed,
    this.isLoading = false,
  }) : super(key: key);
  final Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h, bottom: 15),
      child: CWSizedBox(
        height: 0.07,
        width: 1,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: kMainColor,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: isLoading
              ? const CircularProgressIndicator(
                  color: kBlack,
                )
              : const CWText(
                  text: 'Add Note',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: kBlack),
        ),
      ),
    );
  }
}
