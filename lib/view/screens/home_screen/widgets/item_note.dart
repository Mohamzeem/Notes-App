// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../home_screen.dart';

class CWItemNote extends StatelessWidget {
  const CWItemNote({
    Key? key,
    required this.noteModel,
  }) : super(key: key);
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => EditNoteScreen(
                  noteModel: noteModel,
                )),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 10.w),
        decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: CWText(
                  text: noteModel.title,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  maxLines: 1,
                  color: kBlack),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: CWText(
                    text: noteModel.subTitle,
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    heightText: 1.1.h,
                    maxLines: 3,
                    color: kBlack.withOpacity(0.5)),
              ),
              trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<AllNotesCubit>(context).getAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: kBlack,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
              child: CWText(
                  text: noteModel.date,
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: kBlack.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
