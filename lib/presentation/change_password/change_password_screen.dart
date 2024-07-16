import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/change_password_controller.dart';

class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.orange50,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.v),
          child: Column(
            children: [
              _buildDraweProfileContainer(),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "update_password".tr,
                style: CustomTextStyles.bodyLargeBoldNotoSansGujarati,
              ),
              SizedBox(
                height: 20.h,
              ),
              _buildOldPasswordSectionColumn(),
              SizedBox(
                height: 16.h,
              ),
              _buildNewPasswordSectionColumn(),
              SizedBox(
                height: 16.h,
              ),
              _buildConfirmPasswordSectionColumn(),
              SizedBox(
                height: 40.h,
              ),
              _buildUpdateButton(),
              SizedBox(
                height: 12.h,
              ),
              _buildCancelButton(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 35.h,
      leading: InkWell(
        onTap: () {
          onTapArrowleftone();
        },
        child: Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "update_password".tr,
      ),
    );
  }

  Widget _buildDraweProfileContainer() {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.profileImage),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(2.17),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.profilePersonImage,
            imageHeight: 56.h,
            imageWidth: 71.v,
          ),
          SizedBox(
            width: 15.v,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gandhinagar',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: appTheme.black,
                ),
              ),
              Text(
                'Rahul Chudashma',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: appTheme.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Year Section Widget
  Widget _buildOldPasswordSection() {
    return CustomTextFormField(
      controller: controller.oldPasswordController,
      hintText: "1234",
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// Year Section Widget
  Widget _buildOldPasswordSectionColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "old_password".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildOldPasswordSection()
        ],
      ),
    );
  }

  /// New Password Section Widget
  Widget _buildNewPasswordSection() {
    return CustomTextFormField(
      controller: controller.oldPasswordController,
      hintText: "1234",
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// New Password Section Widget
  Widget _buildNewPasswordSectionColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "new_password".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildNewPasswordSection()
        ],
      ),
    );
  }

  /// Confirm Password Section Widget
  Widget _buildConfirmPasswordSection() {
    return CustomTextFormField(
      controller: controller.oldPasswordController,
      hintText: "1234",
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// Confirm Password Section Widget
  Widget _buildConfirmPasswordSectionColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "confirm_password".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildConfirmPasswordSection()
        ],
      ),
    );
  }

  _buildUpdateButton() {
    return CustomElevatedButton(
      text: 'update'.tr,
      buttonStyle: CustomButtonStyles.bodyLargeActivePrimary,
      buttonTextStyle: TextStyle(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      ),
      onPressed: () {
        controller.showPasswordUpdateCompleteDialogue();
      },
    );
  }

  _buildCancelButton() {
    return CustomElevatedButton(
      text: 'lbl_cancel'.tr,
      buttonStyle: CustomButtonStyles.deleteButton,
      buttonTextStyle: TextStyle(
        color: appTheme.orangeA400,
        fontSize: 18.fSize,
      ),
      onPressed: () {
        Get.back();
      },
    );
  }

  void onTapArrowleftone() {
    Get.back();
  }
}
