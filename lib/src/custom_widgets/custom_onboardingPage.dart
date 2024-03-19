import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../constants/colors.dart';
import '../features/authentication/models/onboarding_models.dart';

class OnboardigPage extends StatelessWidget {
  OnboardigPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;
  final size = Get.size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            model.image,
            height: model.size * .5,
          ),
          Text(
            model.title,
            style: subtitle1,
          ).marginSymmetric(
            vertical: 20.sp,
          ),
          Text(
            model.subtitle,
            style: subtitle1,
          ),
          Text(
            model.counterText,
            style: subtitle1,
          ).marginSymmetric(
            vertical: 20.sp,
          ),
        ],
      ),
    );
  }
}
