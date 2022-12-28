// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
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
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              CWAppBar(
                icon: (Icons.done),
                text: 'Edit Note',
                onPressed: () {
                  widget.noteModel.title = title ?? widget.noteModel.title;
                  widget.noteModel.subTitle =
                      subTitle ?? widget.noteModel.subTitle;
                  widget.noteModel.save();
                  BlocProvider.of<AllNotesCubit>(context).getAllNotes();
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: CWTextField(
                  label: widget.noteModel.title,
                  onChanged: (value) {
                    title = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: CWTextField(
                  label: widget.noteModel.subTitle,
                  maxLines: 8,
                  onChanged: (value) {
                    subTitle = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
