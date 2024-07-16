import '../../../core/app_export.dart';
import '../controller/create_account_form_two_controller.dart';

/// A binding class for the CreateAccountFormTwoScreen.
///
/// This class ensures that the CreateAccountFormTwoController is created when the
/// CreateAccountFormTwoScreen is first loaded.
class CreateAccountFormTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountFormTwoController());
  }
}
