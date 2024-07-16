import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gujarat_state_yoga_board/core/utils/app_strings.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_coordinator_tours_per_view_controller.dart'; // ignore_for_file: must_be_immutable

class AddCoordinatorToursPerViewScreen
    extends GetWidget<AddCoordinatorToursPerViewController> {
  const AddCoordinatorToursPerViewScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;
    final String selectedDate = arguments[AppStrings.dailyReportSelectedDate];
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(top: 10.v),
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  _buildDateRow(selectedDate),
                  SizedBox(height: 24.v),
                  _buildArtistNameColumn(),
                  SizedBox(height: 24.v),
                  _buildColumnartistnam(),
                  SizedBox(height: 24.v),
                  _buildColumnartistnam1(),
                  SizedBox(height: 24.v),
                  _buildColumnartistnam2(),
                  SizedBox(height: 24.v),
                  _buildColumnartistnam3(),
                  SizedBox(height: 24.v),
                  _buildColumnartistnam4(),
                  SizedBox(height: 24.v),
                  _buildColumnartistnam5(),
                  SizedBox(height: 24.v),
                  _buildPhotoUploadColumn(),
                  SizedBox(height: 24.v),
                  _buildSaveButton(),
                  SizedBox(height: 24.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: InkWell(
        onTap: () {
          onTapArrowleftone();
        },
        child: Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_daily_reporting".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDateRow(String selectedDate) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Text(
            "lbl_date".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer18,
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Text(
              selectedDate,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumOnPrimaryContainer18.copyWith(
                height: 1.33,
              ),
            ),
          )
        ],
      ),
    );
  }

  /**
   * showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(
                            DateTime.now().year - 3, DateTime.now().month),
                        initialEntryMode: DatePickerEntryMode.calendarOnly,
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.light().copyWith(
                              primaryColor: AppColors.darkMode800,

                              /// Background color
                              colorScheme: ColorScheme.light(
                                primary: AppColors.whiteColor,

                                /// Header background color
                                onPrimary: AppColors.darkMode700,

                                /// Header text color
                                surface: AppColors.darkMode700,

                                /// Calendar cell background color
                                onSurface: AppColors.whiteColor,
                              ),

                              textTheme: TextTheme(
                                bodyLarge:
                                    TextStyle(color: AppColors.whiteColor),
                                bodyMedium:
                                    TextStyle(color: AppColors.whiteColor),
                              ),
                            ),
                            child: child!,
                          );
                        },
   */

  /// Section Widget
  Widget _buildTimeEdit() {
    return CustomTextFormField(
      controller: controller.timeEditController,
      hintText: "lbl_12_00p_m".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildArtistNameColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          _buildTimeEdit()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationEdit() {
    return CustomTextFormField(
      controller: controller.locationEditController,
      hintText: "lbl_palanpur".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnartistnam() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          _buildLocationEdit()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTalukaEdit() {
    return CustomTextFormField(
      controller: controller.talukaEditController,
      hintText: "lbl_enter_taluka".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnartistnam1() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl2".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          _buildTalukaEdit()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDistrictEdit() {
    return CustomTextFormField(
      controller: controller.districtEditController,
      hintText: "lbl_enter_disctict".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnartistnam2() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl3".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          _buildDistrictEdit()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWardNumberEdit() {
    return CustomTextFormField(
      controller: controller.wardNumberEditController,
      hintText: "lbl_102".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnartistnam3() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl4".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          _buildWardNumberEdit()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTravelReasonEdit() {
    return CustomTextFormField(
      controller: controller.travelReasonEditController,
      hintText: "lbl_yoga_sibir".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnartistnam4() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl5".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          _buildTravelReasonEdit()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAttendanceNumberEdit() {
    return CustomTextFormField(
      controller: controller.attendanceNumberEditController,
      hintText: "lbl_100".tr,
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnartistnam5() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg2".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          _buildAttendanceNumberEdit()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadButton() {
    return CustomElevatedButton(
      onPressed: () => Get.toNamed(AppRoutes.captureImage),
      height: 44.v,
      text: "lbl_upload".tr,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
    );
  }

  /// Section Widget
  Widget _buildPhotoUploadColumn() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "msg_live_session_photo".tr,
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 6.v),
            controller.capturedImages.isEmpty
                ? Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 106.v),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCamera,
                          height: 34.v,
                          width: 46.h,
                        )
                      ],
                    ),
                  )
                : controller.capturedImages.length == 2
                    ? Container(
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              '1. ${"lbl_stage".tr}',
                              style: TextStyle(
                                color: appTheme.black,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            _buildFileImageViewer(
                                controller.capturedImages[0].path),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              '2. ${"lbl_audience".tr}',
                              style: TextStyle(
                                color: appTheme.black,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            _buildFileImageViewer(
                                controller.capturedImages[1].path),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
            SizedBox(height: 6.v),
            controller.capturedImages.length == 2
                ? SizedBox.shrink()
                : _buildUploadButton(),
            SizedBox(height: 2.v)
          ],
        ),
      ),
    );
  }

  Widget _buildFileImageViewer(String file) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 106.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
        image: DecorationImage(
          image: FileImage(
            File(file),
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return Obx(
      () => CustomElevatedButton(
        height: 44.v,
        text: "lbl_save".tr,
        buttonStyle: controller.capturedImages.isNotEmpty
            ? CustomButtonStyles.bodyLargeActivePrimary
            : CustomButtonStyles.fillGray,
        buttonTextStyle: controller.capturedImages.isNotEmpty
            ? CustomTextStyles.bodyLargeActivePrimary
            : CustomTextStyles.bodyLargePrimary,
        onPressed: () {
          if (controller.capturedImages.isNotEmpty) Get.back();
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
