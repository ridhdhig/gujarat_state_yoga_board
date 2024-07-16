import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signin_model.dart';

/// A controller class for the CreateAccountLoginScreen.
///
/// This class manages the state of the CreateAccountLoginScreen, including the
/// current createAccountLoginModelObj
class SignInController extends GetxController {
  TextEditingController mobileNumberInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  TextEditingController coordinatorCodeInputController =
      TextEditingController();

  Rx<SignInModel> createAccountLoginModelObj =
      SignInModel().obs;

  @override
  void onClose() {
    super.onClose();
    mobileNumberInputController.dispose();
    passwordInputController.dispose();
    coordinatorCodeInputController.dispose();
  }
}
