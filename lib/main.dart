import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/consts/strings.dart';
import 'package:notes_app/view/app_view.dart';

void main() async {
  // WidgetsFlutterBinding();
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}
