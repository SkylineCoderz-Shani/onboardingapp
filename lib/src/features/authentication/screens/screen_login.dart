import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onboardingapp/src/constants/colors.dart';
import 'package:onboardingapp/src/custom_widgets/custom_button.dart';
import 'package:onboardingapp/src/custom_widgets/custom_container_textfield.dart';
import 'package:onboardingapp/src/custom_widgets/small_text.dart';

import '../controllers/login_controller.dart';
import '../controllers/signup_controller.dart';

class ScreenLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ControllerLogin());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back(result: true);
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,),),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Log In", style: heading2,),
          Text("Please log in to access the app.", style: subtitle2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                width: Get.width*.4,
                icon: Image.asset("assets/icons/facebook_icon.png"),
                text: "Facebook", onTap: (){},
              buttonColor: backgroundColor,
              ),
              SizedBox(width: 20.sp,),
              CustomButton(
                width: Get.width*.4,
                icon: Image.asset("assets/icons/google_icon.png"),
                text: "Google", onTap: (){},
                buttonColor: backgroundColor,
              ),
            ],
          ).marginSymmetric(
            vertical: 25.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Divider(
                  indent: 20.sp,
                  endIndent: 10.sp,
                  height: 20.sp,
                  thickness: 0.6.sp,
                  color: Colors.white,
                ),
              ),
              Text("Or", style: title3,),
              Expanded(
                flex: 1,
                child: Divider(
                  indent: 10.sp,
                  endIndent: 20.sp,
                  thickness: 0.6.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ).marginSymmetric(
            vertical: 15.sp,
          ),
          CustomStyledTextField(
              controller: controller.controllerEmail,
              hintText: "Email"),
          CustomStyledTextField(
            controller: controller.controllerPassword,
            hintText: "Password", isPasswordField: true,),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){}, child: Text("Forgot Password?", style: subtitle2,),),
          ),
          CustomButton(
              buttonColor: backgroundColor,
              text: "Login", onTap: () {}).marginSymmetric(
            vertical: 15.sp,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: subtitle2,
                children: [
                  TextSpan(
                    text: "SignUp",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.yellow),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      // Get.to(ScreenSignup());
                    },
                  ),
                ],
              ),
            ),
          ).marginSymmetric(
            vertical: 15.sp,
          ),
        ],
      ).marginSymmetric(
        horizontal: 10.sp,
      ),
    );
  }
}
