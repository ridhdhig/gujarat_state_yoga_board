import 'package:camera/camera.dart';

import '../../../core/app_export.dart';
import '../../add_coordinator_tours_per_view_screen/controller/add_coordinator_tours_per_view_controller.dart';

class CaptureImageController extends GetxController {
  AddCoordinatorToursPerViewController controller = Get.find();
  CameraController? cameraController;
  late List<CameraDescription> cameras;
  var currentImageCount = 0.obs;
  var capturedImages = <XFile>[].obs;
  var isCameraInitialized = false.obs;

  @override
  void onReady() {
    super.onReady();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    if (controller.capturedImages.isNotEmpty)
      controller.capturedImages.value = [];
    cameras = await availableCameras();
    if (cameras.isEmpty) {
      Get.showSnackbar(GetSnackBar(
        title: 'No Camera Found',
      ));
      Get.back();
    } else {
      cameraController = CameraController(cameras[0], ResolutionPreset.high);
      await cameraController?.initialize();
      isCameraInitialized.value = true;
    }
    update();
  }

  Future<void> captureImage() async {
    if (cameraController == null || !cameraController!.value.isInitialized) {
      return;
    }

    // final Directory? extDir = await getTemporaryDirectory();
    // final String dirPath = '${extDir!.path}/Pictures/${AppStrings.APPNAME}';
    // await Directory(dirPath).create(recursive: true);
    // final String filePath =
    // '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';

    if (cameraController!.value.isTakingPicture) {
      return;
    }

    try {
      XFile file = await cameraController!.takePicture();
      capturedImages.add(file);
      currentImageCount.value++;
      updateCoordinatorController(file);
    } catch (e) {
      print(e);
    }
  }

  updateCoordinatorController(XFile file) {
    controller.capturedImages.add(file);
  }

  @override
  void onClose() {
    super.onClose();
    cameraController?.dispose();
  }
}
