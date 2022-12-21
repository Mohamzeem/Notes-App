import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_text_form_field.dart';

class CWAddNoteBottomSheet extends StatelessWidget {
  const CWAddNoteBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
          child: const CWTextField(
            label: 'Title',
            height: 0.09,
            width: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
          child: const CWTextField(
            label: 'Content',
            height: 0.4,
            width: 1,
            maxLines: 5,
          ),
        ),
      ],
    );
  }
}
