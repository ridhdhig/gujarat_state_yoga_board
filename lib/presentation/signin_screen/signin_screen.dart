import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/signin_controller.dart'; // ignore_for_file: must_be_immutable

class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.pink900,
      body: Stack(
        children: [
          Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 42.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          SizedBox(height: 36.v),
                          _buildSignInForm()
                        ],
                      ),
                    ),
                    SizedBox(height: 81.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame1171276388,
                      height: 180.v,
                      width: double.maxFinite,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h, left: 20.v),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: appTheme.lime400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberInput() {
    return CustomTextFormField(
      controller: controller.mobileNumberInputController,
      hintText: "lbl_enter_mobile".tr,
      textInputType: TextInputType.phone,
      textStyle: TextStyle(
        color: appTheme.whiteA700,
      ),
      inputFormatters: [
        LengthLimitingTextInputFormatter(15),
        FilteringTextInputFormatter.digitsOnly,
      ],
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordInput() {
    return CustomTextFormField(
      controller: controller.passwordInputController,
      hintText: "lbl_enter_password".tr,
      textInputType: TextInputType.visiblePassword,
      textStyle: TextStyle(
        color: appTheme.whiteA700,
      ),
      inputFormatters: [
        LengthLimitingTextInputFormatter(15),
      ],
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password";
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildCoordinatorCodeInput() {
    return CustomTextFormField(
      controller: controller.coordinatorCodeInputController,
      hintText: "lbl_coordinatior_code".tr,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildSignInButton() {
    return CustomElevatedButton(
      text: "lbl_signin".tr,
      onPressed: () {
        onTapSignInButton();
      },
    );
  }

  /// Section Widget
  Widget _buildSignInForm() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_mobile_number".tr,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
                ),
                _buildMobileNumberInput()
              ],
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_password".tr,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
                ),
                _buildPasswordInput()
              ],
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_coordinator_s_code".tr,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
                ),
                _buildCoordinatorCodeInput()
              ],
            ),
          ),
          SizedBox(height: 24.v),
          _buildSignInButton()
        ],
      ),
    );
  }

  /// Navigates to the createAccountFormTwoScreen when the action is triggered.
  onTapSignInButton() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }
}
