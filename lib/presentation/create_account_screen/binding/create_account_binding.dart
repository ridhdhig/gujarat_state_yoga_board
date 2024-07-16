import '../../../core/app_export.dart';
import '../controller/create_account_controller.dart';

/// A binding class for the CreateAccountLoginScreen.
///
/// This class ensures that the CreateAccountLoginController is created when the
/// CreateAccountLoginScreen is first loaded.
class CreateAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountController());
  }
}
