part of '../home_screen.dart';

class CWNotesList extends StatelessWidget {
  const CWNotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllNotesCubit, AllNotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<AllNotesCubit>(context).notes!;
        return Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: CWItemNote(noteModel: notes[index]),
                    );
                  },
                  itemCount: notes.length,
                )));
      },
    );
  }
}
