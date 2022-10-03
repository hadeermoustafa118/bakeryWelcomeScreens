import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colorManager.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({Key? key, required this.txt}) : super(key: key);
final String txt;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorManager.greyColor,
      cursorHeight: 25.0.h,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: ColorManager.blkColor,
        hintText: txt,
        hintStyle: const TextStyle(color: ColorManager.greyColor),
        //  constraints: BoxConstraints(minHeight: 90.h),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.w, color: Colors.transparent),
          borderRadius: BorderRadius.circular(8).r,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(8).r,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10).r,
      ),
      keyboardType: TextInputType.text,
    );
  }
}
