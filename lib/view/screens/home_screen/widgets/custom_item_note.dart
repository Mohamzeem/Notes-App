import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/view/screens/note_screem/note_screen.dart';
import 'package:notes_app/view/widgets/custom_text.dart';
import '../../../../consts/colors.dart';

class CWItemNote extends StatelessWidget {
  const CWItemNote({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const NoteScreen()),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 10.w),
        decoration: BoxDecoration(
            color: Colors.amber.shade300,
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const CWText(
                  text: 'Flutter Tips',
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: kBlack),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: CWText(
                    text:
                        'Whereas disregard and contempt for human rights have resulted',
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    heightText: 1.1,
                    color: kBlack.withOpacity(0.5)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: kBlack,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
              child: CWText(
                  text: '21 May, 2022',
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: kBlack.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
