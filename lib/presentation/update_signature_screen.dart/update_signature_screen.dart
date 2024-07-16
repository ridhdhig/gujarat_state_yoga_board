import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../core/app_export.dart';
import '../../core/utils/app_strings.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/update_signature_controller.dart';

class UpdateSignatureScreen
    extends GetWidget<UpdateSignatureContainerController> {
  UpdateSignatureScreen({Key? key}) : super(key: key);

  final GlobalKey<SfSignaturePadState>? signaturePadKey =
      GlobalKey<SfSignaturePadState>();
  final bool isFromCreateAccount =
      Get.arguments[AppStrings.isFromCreateAccount] ?? false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.orange50,
      appBar: _buildAppBar(),
      body: _buildBodyContent(),
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
        text: "signature".tr,
      ),
    );
  }

  _buildBodyContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "signature_usage".tr,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appTheme.black,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            "signature_add_note".tr,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appTheme.red400,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            height: 400.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.v),
              color: appTheme.whiteA700,
            ),
            child: SfSignaturePad(
              key: signaturePadKey,
              backgroundColor: Colors.grey[200],
              strokeColor: Colors.black,
              minimumStrokeWidth: 1.0,
              maximumStrokeWidth: 4.0,
              // onSignStart: () {
              //   print('User has started signing.');
              // },
              // onSignEnd: () {
              //   print('User has ended signing.');
              // },
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Obx(
            () => CustomElevatedButton(
              text: isFromCreateAccount
                  ? 'create'.tr
                  : controller.isEditable.value
                      ? 'change'.tr
                      : 'lbl_edit'.tr,
              buttonStyle: CustomButtonStyles.bodyLargeActivePrimary,
              buttonTextStyle: TextStyle(
                color: appTheme.whiteA700,
                fontSize: 18.fSize,
              ),
              onPressed: () {
                if (isFromCreateAccount) {
                  saveSignature();
                } else if (controller.isEditable.value) {
                  saveSignature();
                  controller.showSignatureUpdateCompleteDialogue();
                  Debouncer(delay: Duration(seconds: 1)).call(() {
                    // Get.toNamed(AppRoutes.homeScreenContainerScreen);
                    controller.isEditable.value = false;
                  });
                } else if (!controller.isEditable.value) {
                  controller.isEditable.value = true;
                } else {
                  saveSignature();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> saveSignature() async {
    final data = await signaturePadKey?.currentState?.toImage(pixelRatio: 3.0);
    if (data != null) {
      final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
      if (bytes != null) {
        final buffer = bytes.buffer.asUint8List();

        // Save the image buffer to a file or use it as needed
        // For example, you can use the path_provider package to save it to the device's file system
        // Here, we are just printing the length of the byte buffer
        debugPrint('Signature saved, buffer length: ${buffer.length}');
      }
    }
  }

  void onTapArrowleftone() {
    Get.back();
  }
}
