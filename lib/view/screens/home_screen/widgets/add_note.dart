part of '../home_screen.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CWTextField(
              label: 'Title',
              onSaved: (value) {
                title = value;
              },
            ),
            CWTextField(
              label: 'Content',
              maxLines: 8,
              onSaved: (value) {
                subTitle = value;
              },
            ),
            const CWColorsListView(),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CWElevatedButton(
                  isLoading: State is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formattedDate = DateFormat('EEE, d MMM yyyy, h:mm a')
                          .format(currentDate);
                      var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedDate,
                        color: Colors.pink.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                      BlocProvider.of<AllNotesCubit>(context).getAllNotes();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
