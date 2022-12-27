import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/consts/colors.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_sized_box.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_form_field.dart';
import '../note_screem/note_screen.dart';

part './widgets/custom_elevated_button.dart';
part './widgets/custom_floating_button.dart';
part './widgets/custom_item_note.dart';
part './widgets/custom_note_buttom_sheet.dart';
part './widgets/custom_notes_list.dart';
part './widgets/custom_add_note.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const CWFloatingButton(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: const [
              CWAppBar(icon: (Icons.search), text: 'Notes'),
              CWNotesList(),
            ],
          ),
        ),
      ),
    );
  }
}
