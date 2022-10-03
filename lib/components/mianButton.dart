import 'package:backing_app_ui/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colorManager.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.buttonColor,
          fixedSize: Size(230.w, 60.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0.r),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const Login()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Start Streaming ',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w500,
                color: ColorManager.blkColor,
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: ColorManager.blkColor,
            )
          ],
        ));
  }
}
