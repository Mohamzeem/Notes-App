// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/screens/note_screen/widgets/custom_edit_notes_bar.dart';
import '../../widgets/custom_text_form_field.dart';

class EditNoteScreen extends StatefulWidget {
  const EditNoteScreen({
    Key? key,
    required this.noteModel,
  }) : super(key: key);

  final NoteModel noteModel;

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();
  String? title, subTitle;

  @override
  void initState() {
    titleController.text = widget.noteModel.title;
    subTitleController.text = widget.noteModel.subTitle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              CWEditNoteAppBar(
                onPressedClose: () => Navigator.pop(context),
                onPressedSave: () {
                  widget.noteModel.title = title ?? widget.noteModel.title;
                  widget.noteModel.subTitle =
                      subTitle ?? widget.noteModel.subTitle;
                  widget.noteModel.save();
                  BlocProvider.of<AllNotesCubit>(context).getAllNotes();
                  Navigator.pop(context);
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CWTextField(
                        onChanged: (value) {
                          title = value;
                        },
                        controller: titleController,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: CWTextField(
                          controller: subTitleController,
                          onChanged: (value) {
                            subTitle = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
