import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/screens/home_screen/widgets/custom_floating_button.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/custom_notes_list.dart';

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
