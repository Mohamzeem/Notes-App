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
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
              child: CWTextField(
                label: 'Title',
                onSaved: (value) {
                  title = value;
                },
              )),
          Padding(
              padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
              child: CWTextField(
                label: 'Content',
                maxLines: 8,
                onSaved: (value) {
                  subTitle = value;
                },
              )),
          Padding(
              padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
              child: CWSizedBox(
                  height: 0.07,
                  width: 1,
                  child: CWElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ))),
        ],
      ),
    );
  }
}