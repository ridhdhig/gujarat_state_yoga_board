import '../../../core/app_export.dart';
import '../controller/change_password_controller.dart';

/// A binding class for the CreateAccountFormTwoScreen.
///
/// This class ensures that the CreateAccountFormTwoController is created when the
/// CreateAccountFormTwoScreen is first loaded.
class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }
}
