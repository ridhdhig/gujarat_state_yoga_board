import 'package:flutter/material.dart';
import 'package:gujarat_state_yoga_board/presentation/home_screen/controller/home_screen_controller.dart';

import '../../core/app_export.dart';
import '../../core/enums/launguage.dart';
import '../../core/utils/app_strings.dart';
import '../../widgets/custom_radio_button.dart';

class SettingsScreen extends GetWidget<HomeScreenContainerController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.v,
        right: 12.v,
      ),
      child: Column(
        children: [
          _buildDraweProfileContainer(),
          SizedBox(
            height: 20.h,
          ),
          _buildLanguageSelectionContainer(),
          SizedBox(
            height: 4.h,
          ),
          _buildMenuItemsContainer(),
        ],
      ),
    );
  }

  Widget _buildMenuItemsContainer() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildDrawerMenuContainer(
            "lbl_home".tr,
            ImageConstant.homeImage,
            () {
              controller.selectedIndex.value = 0;
              // Do Action for navigation
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          buildDrawerMenuContainer(
            "lbl_my_profile".tr,
            ImageConstant.profileIcon,
            () {
              Get.toNamed(
                AppRoutes.myProfile,
              );
              // Do Action for navigation
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          buildDrawerMenuContainer(
            "signature".tr,
            ImageConstant.imgSignature,
            () {
              Get.toNamed(
                AppRoutes.updateSignature,
                arguments: {AppStrings.isFromCreateAccount: false},
              );
              // Do Action for navigation
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          buildDrawerMenuContainer(
            "bank_details".tr,
            ImageConstant.imgBank,
            () {
              Get.toNamed(
                AppRoutes.editBankDetail,
              );
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          buildDrawerMenuContainer(
            "lbl_change_password".tr,
            ImageConstant.lockImage,
            () {
              Get.toNamed(AppRoutes.updatePassword);
              // Do Action for navigation
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          buildDrawerMenuContainer(
            "my_recent_data".tr,
            ImageConstant.imgRecentData,
            () {
              controller.showCategorySelectionDialog();
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          buildDrawerMenuContainer(
            "logout".tr,
            ImageConstant.imgLogout,
            () {
              controller.showLogoutPopUp();
              // Do Action for navigation
            },
          ),
        ],
      ),
    );
  }

  Widget buildDrawerMenuContainer(
      String text, String imagePath, Function onTap) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 48.h,
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: appTheme.gray5001,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: imagePath,
            ),
            SizedBox(
              width: 6.h,
            ),
            Text(
              text,
              style: TextStyle(
                color: appTheme.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageSelectionContainer() {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: controller.isSettingContainerExpanded.value ? 126.h : 48.h,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: appTheme.gray5001,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  controller.isSettingContainerExpanded.value =
                      !controller.isSettingContainerExpanded.value;
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLanguageChange,
                        ),
                        SizedBox(
                          width: 6.v,
                        ),
                        Text(
                          'Language:',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: appTheme.black,
                          ),
                        ),
                        SizedBox(
                          width: 6.v,
                        ),
                        Text(
                          '${controller.settingContainerSelectedLanguage}',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: appTheme.black,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          controller.isSettingContainerExpanded.value =
                              !controller.isSettingContainerExpanded.value;
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 7.h),
                          child: CustomImageView(
                            imagePath:
                                controller.isSettingContainerExpanded.value
                                    ? ImageConstant.arrowUpImage
                                    : ImageConstant.arrowDownImage,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                children: [
                  CustomRadioButton<Language>(
                    onChange: (value) {
                      controller.language.value = value;
                    },
                    groupValue: controller.language.value,
                    text: 'lbl_english'.tr,
                    value: Language.english,
                  ),
                  CustomRadioButton<Language>(
                    onChange: (value) {
                      controller.language.value = value;
                    },
                    text: 'lbl_gujarati'.tr,
                    groupValue: controller.language.value,
                    value: Language.gujarati,
                  ),
                ],
              ),
            ],
          ),
        ),
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
}
