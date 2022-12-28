// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class CWColorsListView extends StatefulWidget {
  const CWColorsListView({super.key});

  @override
  State<CWColorsListView> createState() => _CWColorsListViewState();
}

class _CWColorsListViewState extends State<CWColorsListView> {
  List<Color> colorslist = [
    Colors.green.shade300,
    Colors.grey.shade700,
    Colors.orange.shade500,
    Colors.yellow,
    Colors.red.shade300
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: SizedBox(
        height: 22 * 2.h,
        child: ListView.builder(
            itemCount: colorslist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: InkWell(
                    onTap: () {
                      currentIndex = index;
                      BlocProvider.of<AddNoteCubit>(context).color =
                          colorslist[index];
                      setState(() {});
                    },
                    child: CWCircleAvatar(
                      color: colorslist[index],
                      isActive: currentIndex == index,
                    ),
                  ));
            })),
      ),
    );
  }
}

class CWCircleAvatar extends StatelessWidget {
  const CWCircleAvatar({
    Key? key,
    required this.color,
    required this.isActive,
  }) : super(key: key);
  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 22.r,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 16.r,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 22.r,
          );
  }
}
