import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:onboardingapp/src/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../src/constants/images_strings.dart';
import '../../src/custom_widgets/custom_onboardingPage.dart';
import '../../src/features/authentication/controllers/onboarding_controller.dart';
import '../../src/features/authentication/models/onboarding_models.dart';

class ScreenOnboarding extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangeCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios, color: Colors.red,),
            enableSideReveal: true,
            waveType: WaveType.liquidReveal,

            pages: [
              Container(
                padding: EdgeInsets.all(10.sp),
                color: Colors.purple.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      onboarding01,
                      height: obcontroller.size.height * 0.5,
                    ),
                    Text(
                      "Build Awesome Apps",
                      style: title1,
                    ).marginSymmetric(
                      vertical: 20.sp,
                    ),
                    Text(
                      "Let's start you journey with us on this amazing and easy platform.",
                      style: subtitle1,
                    ),
                    Text(
                      "1/3",
                      style: subtitle1,
                    ).marginSymmetric(
                      vertical: 20.sp,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.yellow.shade200,
                padding: EdgeInsets.all(10.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      onboarding02,
                      height: obcontroller.size.height * 0.5,
                    ),
                    Text(
                      "Learn From YouTube",
                      style: title1,
                    ).marginSymmetric(
                      vertical: 20.sp,
                    ),
                    Text(
                      "Get video Tutorial of each topic to learn things easily.",
                      style: subtitle1,
                    ),
                    Text(
                      "2/3",
                      style: subtitle1,
                    ).marginSymmetric(
                      vertical: 20.sp,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.sp),
                color: Colors.green.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      onboarding03,
                      height: obcontroller.size.height * 0.5,
                    ),
                    Text(
                      "Get Code & Resources",
                      style: title1,
                    ).marginSymmetric(
                      vertical: 20.sp,
                    ),
                    Text(
                      "Sometime by just copy pasting complete apps learn from videos",
                      style: subtitle1,
                    ),
                    Text(
                      "3/3",
                      style: subtitle1,
                    ).marginSymmetric(
                      vertical: 20.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 40.sp,
            right: 10.sp,
            child: TextButton(
                onPressed: () => obcontroller.skip(),
                child: Text(
                  "Skip",
                  style: title3,
                )),
          ),
          Positioned(
            bottom: 20.sp,
            child: Container(
              height: 50.sp,
              width: 50.sp,
              padding: EdgeInsets.all(5.sp),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
              ),
              child: IconButton(
                  color: Colors.black,
                  onPressed: ()=>obcontroller.animatetoNextSlide(), icon: Icon(Icons.arrow_forward_ios,))
            ),
          ),
          Obx(
            ()=> Positioned(
              bottom: 90.sp,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.currentPage.value,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotWidth: 10.sp,
                  dotHeight: 10.sp,
                  dotColor: Colors.white,
                  activeDotColor: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}