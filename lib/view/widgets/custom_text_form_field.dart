// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:notes_app/consts/colors.dart';

class CWTextField extends StatelessWidget {
  const CWTextField({
    Key? key,
    this.label,
    this.maxLines,
    this.onSaved,
    this.onChanged,
    this.controller,
  }) : super(key: key);
  final String? label;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: TextFormField(
        onSaved: onSaved,
        onChanged: onChanged,
        controller: controller,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field Required';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.text,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          color: kWhite,
        ),
        cursorColor: kMainColor,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          hintText: label,
          hintStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.normal,
              color: kMainColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: kWhite,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kMainColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: kWhite,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kMainColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: kWhite,
            ),
          ),
        ),
      ),
    );
  }
}
