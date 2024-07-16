import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/create_account_model.dart';

/// A controller class for the CreateAccountLoginScreen.
///
/// This class manages the state of the CreateAccountLoginScreen, including the
/// current createAccountLoginModelObj
class CreateAccountController extends GetxController {
  TextEditingController mobileNumberInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  TextEditingController coordinatorCodeInputController =
      TextEditingController();

  Rx<CreateAccountModel> createAccountLoginModelObj = CreateAccountModel().obs;

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

  @override
  void onClose() {
    super.onClose();
    mobileNumberInputController.dispose();
    passwordInputController.dispose();
    coordinatorCodeInputController.dispose();
  }
}
