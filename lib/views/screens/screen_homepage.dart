import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onboarding/onboarding.dart';
import 'package:onboardingapp/src/constants/colors.dart';
import 'package:onboardingapp/src/custom_widgets/custom_button.dart';
import 'package:onboardingapp/src/custom_widgets/custom_image.dart';
import 'package:onboardingapp/src/custom_widgets/small_text.dart';
import 'package:onboardingapp/src/features/authentication/screens/screen_login.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LargeText(
            text: ".appable/",
            textColor: textColor,
          ),
          LargeText(
            text: "Learn To Code.\nFree From Everywhere",
            textColor: textColor,
          ),
          Center(
            child: Image.asset(
              'assets/images/splash_image.png',
            ),
          ),
          CustomButton(
              buttonColor: backgroundColor,
              text: "Already have an account?", onTap: () {
            Get.to(ScreenLogin());
          }).marginSymmetric(
            vertical: 15.sp,
          ),
          CustomButton(text: "Create an Account", buttonColor: backgroundColor, onTap: () {},),
        ],
      ).marginSymmetric(
        horizontal: 10.sp,
      ),
    );
  }
}
