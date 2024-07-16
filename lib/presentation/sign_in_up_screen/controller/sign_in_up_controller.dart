import '../../../core/app_export.dart';
import '../models/sign_in_up_model.dart';

/// A controller class for the SignInUpScreen.
///
/// This class manages the state of the SignInUpScreen, including the
/// current signInUpModelObj
class SignInUpController extends GetxController {
  Rx<SignInUpModel> signInUpModelObj = SignInUpModel().obs;

  @override
  void onReady() {}
}
