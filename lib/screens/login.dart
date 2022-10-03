import 'package:backing_app_ui/colorManager.dart';
import 'package:backing_app_ui/components/circularButton.dart';
import 'package:backing_app_ui/components/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.blkColor,
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'images/backing2.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
            flex: 3,
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('SIGN IN',
                    style: TextStyle(
                        color: ColorManager.whiteColor,
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold)),
                Text('SIGN UP',
                    style: TextStyle(
                        color: ColorManager.buttonColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.alternate_email,
                      color: ColorManager.iconColor,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Expanded(
                        child: MainTextField(
                      txt: 'Email Address',
                    ))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.lock,
                      color: ColorManager.iconColor,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Expanded(
                        child: MainTextField(
                      txt: 'Password',
                    ))
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircularButton(
                  icon: FontAwesomeIcons.facebookF,
                  borderColor: ColorManager.greyColor,
                  color: ColorManager.blkColor,
                  iconColor: ColorManager.greyColor,
                ),
                SizedBox(
                  width: 20.h,
                ),
                const CircularButton(
                    icon: FontAwesomeIcons.twitter,
                    borderColor: ColorManager.greyColor,
                    color: ColorManager.blkColor,
                    iconColor: ColorManager.greyColor),
                const Spacer(),
                const CircularButton(
                    icon: FontAwesomeIcons.arrowRight,
                    borderColor: Colors.transparent,
                    color: ColorManager.buttonColor,
                    iconColor: ColorManager.blkColor),
              ],
            ),
          )
        ],
      ),
    );
  }
}
