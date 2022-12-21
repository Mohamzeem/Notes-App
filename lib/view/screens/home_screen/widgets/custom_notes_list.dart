part of '../home_screen.dart';

class CWNotesList extends StatelessWidget {
  const CWNotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: const CWItemNote(),
            );
          },
          // itemCount: 4,
        ),
      ),
    );
  }
}
