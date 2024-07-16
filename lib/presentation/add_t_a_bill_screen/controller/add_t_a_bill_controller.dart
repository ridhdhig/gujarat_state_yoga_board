import 'dart:ui' as ui;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:gujarat_state_yoga_board/widgets/custom_elevated_button.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import '../../../core/app_export.dart';
import '../../../core/enums/zone_enum.dart';
import '../../../theme/custom_button_style.dart';
import '../models/add_t_a_bill_model.dart';

/// A controller class for the NewEditTABill2ndScreen.
///
/// This class manages the state of the NewEditTABill2ndScreen, including the
/// current newEditTABill2ndModelObj
class AddTABillController extends GetxController {
  TextEditingController artistMonthController = TextEditingController();

  TextEditingController departureTimeController = TextEditingController();

  TextEditingController arrivalTimeController = TextEditingController();

  Rx<AddTABillModel> newEditTABill2ndModelObj = AddTABillModel().obs;

  Rx<Zone> hoddo = Zone.state.obs;

  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();
  Rx<ByteData>? imageBytes = ByteData(0).obs;

  openSignaturePad() {
    return Get.dialog(
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        width: 343.v,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SfSignaturePad(
              key: signatureGlobalKey,
              backgroundColor: Colors.grey[200],
            ),
            CustomElevatedButton(
              text: "Save",
              width: 345.v,
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

  @override
  void onClose() {
    super.onClose();
    // artistMonthController.dispose();
    // departureTimeController.dispose();
    // arrivalTimeController.dispose();
    // _handleClearButtonPressed();
  }
}
