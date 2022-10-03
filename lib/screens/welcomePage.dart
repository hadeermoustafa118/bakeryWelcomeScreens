import 'package:backing_app_ui/components/mianButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colorManager.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.blkColor,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              'images/backing.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'BAKING LESSONS',
                    style: TextStyle(
                        fontSize: 45.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.whiteColor),
                  ),
                  Text(
                    'MASTER THE ART OF BAKING',
                    style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.normal,
                        color: ColorManager.whiteColor),
                  ),
                ],
              ),
            ),
          ),
          const FittedBox(child: MainButton()),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
