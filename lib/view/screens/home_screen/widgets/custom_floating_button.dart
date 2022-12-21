part of '../home_screen.dart';

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
            isScrollControlled: true,
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
