import '../../../core/app_export.dart';
import '../controller/t_a_bill_controller.dart';

/// A binding class for the CreateAccountLoginScreen.
///
/// This class ensures that the CreateAccountLoginController is created when the
/// CreateAccountLoginScreen is first loaded.
class TABillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TABillListController());
  }
}
