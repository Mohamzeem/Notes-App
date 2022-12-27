import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              const CWAppBar(
                icon: (Icons.done),
                text: 'Edit Note',
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: const CWTextField(label: 'Title'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: const CWTextField(label: 'Content', maxLines: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
