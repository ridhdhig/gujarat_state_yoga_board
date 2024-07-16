import '../../../core/app_export.dart';
import '../controller/sign_in_up_controller.dart';

/// A binding class for the SignInUpScreen.
///
/// This class ensures that the SignInUpController is created when the
/// SignInUpScreen is first loaded.
class SignInUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInUpController());
  }
}
