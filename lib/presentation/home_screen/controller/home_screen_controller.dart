import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../core/enums/launguage.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../create_account_form/models/create_account_form_two_model.dart';
import '../models/home_screen_model.dart';

/// A controller class for the HomeScreenContainerScreen.
///
/// This class manages the state of the HomeScreenContainerScreen, including the
/// current homeScreenContainerModelObj
class HomeScreenContainerController extends GetxController {
  Rx<HomeScreenModel> homeScreenContainerModelObj = HomeScreenModel().obs;

  Rx<CreateAccountFormModel> selectdate = CreateAccountFormModel().obs;
  RxList<String> languages = RxList(["English", "ગુજરાતી"]);
  Rx<bool> isExpanded = false.obs;
  Rx<String> selectedLanguage = ''.obs;
  Rx<bool> isSettingContainerExpanded = false.obs;
  Rx<String> settingContainerSelectedLanguage = ''.obs;
  Rx<Language> language = Language.english.obs;
  Rx<Language> settingContainerLanguage = Language.english.obs;
  Rx<int> selectedIndex = 0.obs;

  Rx<bool> isEditable = false.obs;

  void onInit() {
    super.onInit();
    selectedIndex.value = 0;
  }

  void onReady() {
    super.onReady();
    selectedLanguage.value = languages.first;
    _showCongratulationsDialog();
  }

  showLogoutPopUp() {
    Get.dialog(
      Dialog(
        child: Container(
          height: 204.h,
          width: 343.v,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: appTheme.gray50,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 14.v,
            vertical: 18.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogout,
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                "logout_confirmation".tr,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: appTheme.black,
                ),
              ),
              SizedBox(
                height: 36.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      text: 'no'.tr,
                      buttonStyle: CustomButtonStyles.bodyLargeActivePrimary,
                      buttonTextStyle: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 18.fSize,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 14.v,
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      text: 'yes'.tr,
                      buttonStyle: CustomButtonStyles.deleteButton,
                      buttonTextStyle: TextStyle(
                        color: appTheme.orangeA400,
                        fontSize: 18.fSize,
                      ),
                      onPressed: () {
                        selectedIndex.value = 0;
                        Get.offAndToNamed(AppRoutes.signInUpScreen);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showCongratulationsDialog() {
    Get.dialog(
      Dialog(
        child: Container(
          height: 343.h,
          width: 343.v,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8.v),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.congratulationsImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
    Future.delayed(Duration(seconds: 1), () {
      Get.back(); // Close the dialog
    });
  }

  showCategorySelectionDialog() {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: appTheme.orange50,
        child: Container(
          height: 200.h,
          width: double.infinity,
          padding: EdgeInsets.all(12.v),
          child: Column(
            children: [
              Text(
                'select_category'.tr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: appTheme.pink900,
                ),
              ),
              Divider(
                color: appTheme.gray700.withOpacity(.3),
                thickness: 1.5,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.exportDailyTourScreen);
                    },
                    child: Container(
                      width: 87.v,
                      height: 115.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgdailyReportingCategory,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 12.v),
                      child: Text(
                        'daily_tour'.tr,
                        style: TextStyle(
                          color: appTheme.orange50,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.v,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.exportMonthlyReportingListScreen);
                    },
                    child: Container(
                      width: 87.v,
                      height: 115.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgMonthlyBillCategory,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 12.v),
                      child: Text(
                        'msg_monthly_reporting'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appTheme.orange50,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.v,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.exportTABillListScreen);
                    },
                    child: Container(
                      width: 87.v,
                      height: 115.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgTABillCategory,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 12.v),
                      child: Text(
                        't_a_bill'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appTheme.orange50,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
