import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/app_export.dart';

class ChangePasswordController extends GetxController {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController newConfirmPasswordController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    newConfirmPasswordController.dispose();
  }

  showPasswordUpdateCompleteDialogue() {
    Get.dialog(
      Dialog(
        backgroundColor: appTheme.orange50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.v),
        ),
        child: Container(
          height: 170.h,
          width: 343.v,
          padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 22.v),
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                ImageConstant.imgConfirm,
              ),
              Divider(
                color: appTheme.gray60001,
                thickness: 2.0,
              ),
              Text(
                "password_updated".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: appTheme.black,
                ),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
    Future.delayed(Duration(seconds: 1), () {
      Get.offAndToNamed(
          AppRoutes.homeScreenContainerScreen); // Close the dialog
    });
  }
}
