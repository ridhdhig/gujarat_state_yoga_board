import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/sign_in_up_controller.dart'; // ignore_for_file: must_be_immutable

class SignInUpScreen extends GetWidget<SignInUpController> {
  const SignInUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.pink900,
      body: Column(
        children: [
          SizedBox(height: 40.v),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      children: [
                        Container(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder50,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage244,
                                height: 96.v,
                                width: double.maxFinite,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "msg_gujarat_state_yog".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        Text(
                          "msg_under_sports_youth".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 146.v),
                        _buildYogCoordinatorSection()
                      ],
                    ),
                  ),
                  SizedBox(height: 118.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame1171276388,
                    height: 180.v,
                    width: double.maxFinite,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYogCoordinatorSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Text(
            "msg_yog_co_ordinator".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 30.v),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                CustomElevatedButton(
                  text: "lbl_create_account".tr,
                  onPressed: () {
                    onTapCreateaccount();
                  },
                ),
                SizedBox(height: 12.v),
                CustomElevatedButton(
                  text: "lbl_log_in".tr,
                  onPressed: () {
                    onTapLogin();
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the createAccountLoginScreen when the action is triggered.
  onTapCreateaccount() {
    Get.toNamed(
      AppRoutes.createAccountScreen,
    );
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
