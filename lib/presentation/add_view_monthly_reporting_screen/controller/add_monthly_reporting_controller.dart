import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../create_account_form/models/create_account_form_two_model.dart';
import '../models/add_monthly_reporting_model.dart';

/// A controller class for the NewEditMonthlyReportingDhiwiseScreen.
///
/// This class manages the state of the NewEditMonthlyReportingDhiwiseScreen, including the
/// current newEditMonthlyReportingDhiwiseModelObj
class AddMonthlyReportingController extends GetxController {
  TextEditingController yearSectionController = TextEditingController();

  TextEditingController districtCoordinatorNameController =
      TextEditingController();

  TextEditingController districtManapaController = TextEditingController();

  TextEditingController pastWorkSectionController = TextEditingController();

  TextEditingController currentWorkSectionController = TextEditingController();

  TextEditingController totalWorkSectionController = TextEditingController();

  TextEditingController pastWork1SectionController = TextEditingController();

  TextEditingController currentWork1SectionController = TextEditingController();

  TextEditingController totalWork1SectionController = TextEditingController();

  TextEditingController pastWork2SectionController = TextEditingController();

  TextEditingController currentWork2SectionController = TextEditingController();

  TextEditingController totalWork2SectionController = TextEditingController();

  TextEditingController pastWork3SectionController = TextEditingController();

  TextEditingController currentWork3SectionController = TextEditingController();

  TextEditingController totalWork3SectionController = TextEditingController();

  TextEditingController pastWork4SectionController = TextEditingController();

  TextEditingController currentWork4SectionController = TextEditingController();

  TextEditingController totalWork4SectionController = TextEditingController();

  TextEditingController pastWork5SectionController = TextEditingController();

  TextEditingController currentWork5SectionController = TextEditingController();

  TextEditingController totalWork5SectionController = TextEditingController();

  TextEditingController pastWork6SectionController = TextEditingController();

  TextEditingController currentWork6SectionController = TextEditingController();

  TextEditingController totalWork6SectionController = TextEditingController();

  TextEditingController pastWork7SectionController = TextEditingController();

  TextEditingController currentWork7SectionController = TextEditingController();

  TextEditingController totalWork7SectionController = TextEditingController();

  TextEditingController pastWork8SectionController = TextEditingController();

  TextEditingController currentWork8SectionController = TextEditingController();

  TextEditingController totalWork8SectionController = TextEditingController();

  TextEditingController pastWork9SectionController = TextEditingController();

  TextEditingController currentWork9SectionController = TextEditingController();

  TextEditingController totalWork9SectionController = TextEditingController();

  TextEditingController pastWork10SectionController = TextEditingController();

  TextEditingController currentWork10SectionController =
      TextEditingController();

  TextEditingController totalWork10SectionController = TextEditingController();

  TextEditingController pastWork11SectionController = TextEditingController();

  TextEditingController currentWork11SectionController =
      TextEditingController();

  TextEditingController totalWork11SectionController = TextEditingController();

  Rx<AddMonthlyReportingModel> newEditMonthlyReportingDhiwiseModelObj =
      AddMonthlyReportingModel().obs;

  Rx<CreateAccountFormModel> selectdate = CreateAccountFormModel().obs;

  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();
  Rx<ByteData>? imageBytes = ByteData(0).obs;

  openSignaturePad() {
    return Get.dialog(
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SfSignaturePad(
              key: signatureGlobalKey,
              backgroundColor: Colors.grey[200],
            ),
            CustomElevatedButton(
              text: "Save",
              width: 343.v,
              onPressed: () async {
                final data = await signatureGlobalKey.currentState!
                    .toImage(pixelRatio: 3.0);
                final byteData =
                    await data.toByteData(format: ui.ImageByteFormat.png);
                if (byteData != null) {
                  imageBytes?.value = byteData;
                } else {
                  imageBytes?.value = ByteData(0);
                }
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
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
                        Get.toNamed(AppRoutes.homeScreenContainerScreen);
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

  @override
  void onClose() {
    super.onClose();
    yearSectionController.dispose();
    pastWorkSectionController.dispose();
    currentWorkSectionController.dispose();
    totalWorkSectionController.dispose();
    pastWork1SectionController.dispose();
    currentWork1SectionController.dispose();
    totalWork1SectionController.dispose();
    pastWork2SectionController.dispose();
    currentWork2SectionController.dispose();
    totalWork2SectionController.dispose();
    pastWork3SectionController.dispose();
    currentWork3SectionController.dispose();
    totalWork3SectionController.dispose();
    pastWork4SectionController.dispose();
    currentWork4SectionController.dispose();
    totalWork4SectionController.dispose();
    pastWork5SectionController.dispose();
    currentWork5SectionController.dispose();
    totalWork5SectionController.dispose();
    pastWork6SectionController.dispose();
    currentWork6SectionController.dispose();
    totalWork6SectionController.dispose();
    pastWork7SectionController.dispose();
    currentWork7SectionController.dispose();
    totalWork7SectionController.dispose();
    pastWork8SectionController.dispose();
    currentWork8SectionController.dispose();
    totalWork8SectionController.dispose();
    pastWork9SectionController.dispose();
    currentWork9SectionController.dispose();
    totalWork9SectionController.dispose();
    pastWork10SectionController.dispose();
    currentWork10SectionController.dispose();
    totalWork10SectionController.dispose();
    pastWork11SectionController.dispose();
    currentWork11SectionController.dispose();
    totalWork11SectionController.dispose();
  }
}
