part of '../home_screen.dart';

class CWAddNoteBottomSheet extends StatelessWidget {
  const CWAddNoteBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}
