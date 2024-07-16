import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import '../../../core/app_export.dart';
import '../../../core/enums/coordinates_designation_enum.dart';
import '../../../core/enums/gender_enum.dart';
import '../../../core/enums/marital_status_enum.dart';
import '../../../core/enums/profession_enum.dart';
import '../../../core/enums/qualification_enum.dart';
import '../../../core/enums/track_suite_size_enum.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/create_account_form_two_model.dart';

/// A controller class for the CreateAccountFormTwoScreen.
///
/// This class manages the state of the CreateAccountFormTwoScreen, including the
/// current createAccountFormTwoModelObj
class CreateAccountFormTwoController extends GetxController {
  TextEditingController firstNameFieldController = TextEditingController();

  TextEditingController middleNameFieldController = TextEditingController();

  TextEditingController surnameFieldController = TextEditingController();

  TextEditingController addressFieldController = TextEditingController();

  TextEditingController talukaFieldController = TextEditingController();

  TextEditingController districtFieldController = TextEditingController();

  TextEditingController mobileNumberFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController weightController = TextEditingController();

  Rx<CreateAccountFormModel> createAccountFormTwoModelObj =
      CreateAccountFormModel().obs;

  Rx<Gender> gender = Gender.male.obs;

  RxString selectedImagePath = ''.obs;

  Rx<MaritalStatus> maritalstatus = MaritalStatus.married.obs;

  Rx<CoordinatesDesignation> yogcoordinator = CoordinatesDesignation.state.obs;

  Rx<Qualification> education = Qualification.ssc.obs;

  Rx<bool> isYCBLevel1Checked = false.obs;

  Rx<bool> isYCBLevel2Checked = false.obs;

  Rx<bool> isYCBLevel3Checked = false.obs;

  Rx<bool> isYCBLevel4Checked = false.obs;

  Rx<bool> isDiplomaInYogaChecked = false.obs;

  Rx<bool> isMasterInYogaChecked = false.obs;

  Rx<bool> isOtherChecked = false.obs;

  Rx<Profession> profession = Profession.govermentJob.obs;

  Rx<TrackSuiteSize> tracksuite = TrackSuiteSize.s36.obs;

  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();
  Rx<ByteData>? imageBytes = ByteData(0).obs;

  var imagePath = Rx<File?>(null);

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

  void pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    selectedImagePath.value = pickedFile!.path;
  }

  void captureImageFromCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    selectedImagePath.value = pickedFile!.path;
  }

  @override
  void onClose() {
    super.onClose();
    firstNameFieldController.dispose();
    middleNameFieldController.dispose();
    surnameFieldController.dispose();
    addressFieldController.dispose();
    talukaFieldController.dispose();
    districtFieldController.dispose();
    mobileNumberFieldController.dispose();
    emailFieldController.dispose();
    nameController.dispose();
    weightController.dispose();
  }
}
