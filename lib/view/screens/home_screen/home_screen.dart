import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/consts/colors.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import '../../../cubits/all_notes_cubit/all_notes_cubit.dart';
import '../note_screem/edit_note_screen.dart';
import 'widgets/home_bar.dart';
import '../../widgets/custom_sized_box.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_form_field.dart';

part 'widgets/elevated_button.dart';
part 'widgets/item_note.dart';
part 'widgets/note_buttom_sheet.dart';
part 'widgets/notes_list.dart';
part 'widgets/add_note.dart';
part 'widgets/list_view.dart';

class HomeScreenAllNotes extends StatefulWidget {
  const HomeScreenAllNotes({super.key});

  @override
  State<HomeScreenAllNotes> createState() => _HomeScreenAllNotesState();
}

class _HomeScreenAllNotesState extends State<HomeScreenAllNotes> {
  @override
  void initState() {
    BlocProvider.of<AllNotesCubit>(context).getAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: const [
              CWNotesAppBar(),
              CWNotesList(),
            ],
          ),
        ),
      ),
    );
  }
}
