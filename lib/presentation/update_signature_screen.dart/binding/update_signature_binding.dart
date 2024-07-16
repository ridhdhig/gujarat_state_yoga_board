import '../../../core/app_export.dart';
import '../controller/update_signature_controller.dart';

/// A binding class for the HomeScreenContainerScreen.
///
/// This class ensures that the HomeScreenContainerController is created when the
/// HomeScreenContainerScreen is first loaded.
class UpdateSignatureContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdateSignatureContainerController());
  }
}
