import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colorManager.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({Key? key, required this.icon , required this.color,required this.iconColor, required this.borderColor}) : super(key: key);
final Color color;
final Color borderColor;
final Color iconColor;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(

          backgroundColor: color,
          fixedSize: Size(30.w, 60.h),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.r,
              color: borderColor,
                style: BorderStyle.solid

            ),
            borderRadius: BorderRadius.circular(40.0.r),
          ),
        ),
        onPressed: (){},
        child:FaIcon(icon, color: iconColor,size: 25.r,) );
  }
}
