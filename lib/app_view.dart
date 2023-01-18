import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/consts/colors.dart';
import 'package:notes_app/view/screens/home_screen/home_screen.dart';
import 'cubits/all_notes_cubit/all_notes_cubit.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllNotesCubit(),
      child: ScreenUtilInit(
          designSize: const Size(392.72727272727275, 781.0909090909091),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: ((context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'MY NOTES',
              theme: ThemeData(
                fontFamily: 'Poppins',
                scaffoldBackgroundColor: kBlack,
                appBarTheme: const AppBarTheme(
                  backgroundColor: kWhite,
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarIconBrightness: Brightness.light,
                  ),
                ),
              ),
              home: const HomeScreenAllNotes(),
            );
          })),
    );
  }
}
