import '../../../core/app_export.dart';
import '../controller/my_profile_controller.dart';

/// A binding class for the CreateAccountFormTwoScreen.
///
/// This class ensures that the CreateAccountFormTwoController is created when the
/// CreateAccountFormTwoScreen is first loaded.
class MyProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyProfileController());
  }
}
