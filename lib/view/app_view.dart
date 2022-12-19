import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/consts/colors.dart';
import 'package:notes_app/view/screens/home_screen/home_screen.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(392.72727272727275, 781.0909090909091),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: ((context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: kBlack,
                // brightness: Brightness.dark,
                appBarTheme: const AppBarTheme(
                  backgroundColor: kWhite,
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarIconBrightness: Brightness.light,
                  ),
                ),
              ),
              home: const HomeScreen(),
            )));
  }
}
