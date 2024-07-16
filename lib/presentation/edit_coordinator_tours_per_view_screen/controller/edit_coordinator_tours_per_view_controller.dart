import 'package:flutter/material.dart';
import 'package:gujarat_state_yoga_board/widgets/custom_elevated_button.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../models/edit_coordinator_tours_per_view_model.dart';

/// A controller class for the EditCoordinatorToursPerViewScreen.
///
/// This class manages the state of the EditCoordinatorToursPerViewScreen, including the
/// current editCoordinatorToursPerViewModelObj
class EditCoordinatorToursPerViewController extends GetxController {
  Rx<EditCoordinatorToursPerViewModel> editCoordinatorToursPerViewModelObj =
      EditCoordinatorToursPerViewModel().obs;

  @override
  void onClose() {
    super.onClose();
  }

  showDeleteConfirmationDialogue() {
    Get.dialog(
      Dialog(
        child: Container(
          height: 204.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder12,
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
                imagePath: ImageConstant.deleteImage,
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                "lbl_delete_confirmation".tr,
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
                      text: 'lbl_cancel'.tr,
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
                      text: 'lbl_delete'.tr,
                      buttonStyle: CustomButtonStyles.deleteButton,
                      buttonTextStyle: TextStyle(
                        color: appTheme.orangeA400,
                        fontSize: 18.fSize,
                      ),
                      onPressed: () {
                        Get.back();
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
}
