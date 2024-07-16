import '../../../core/app_export.dart';
import '../controller/capture_image_controller.dart';

/// A binding class for the CaptureImageController.
///
/// This class ensures that the CaptureImageController is created when the
/// CaptureImageScreen is first loaded.
class CaptureImageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CaptureImageController());
  }
}
