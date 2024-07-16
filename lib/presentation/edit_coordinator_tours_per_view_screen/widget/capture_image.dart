import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../capture_images/controller/capture_image_controller.dart';

class CaptureImage extends GetWidget<CaptureImageController> {
  const CaptureImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        elevation: 0,
        leading: SizedBox.shrink(),
        title: Text(
          "lbl_live_capture".tr,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Obx(
          () {
            if (!controller.isCameraInitialized.value) {
              return Center(child: CircularProgressIndicator());
            }
            return Column(
              children: [
                if (controller.cameraController != null &&
                    controller.cameraController!.value.isInitialized)
                  Container(
                    height: 450.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.black,
                    ),
                    child: AspectRatio(
                      aspectRatio:
                          controller.cameraController!.value.aspectRatio,
                      child: CameraPreview(controller.cameraController!),
                    ),
                  ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      padding: controller.currentImageCount.value > 0
                          ? EdgeInsets.zero
                          : const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: appTheme.pink900,
                      ),
                      child: controller.currentImageCount.value > 0
                          ? Icon(
                              Icons.check,
                              color: appTheme.whiteA700,
                              size: 20,
                            )
                          : Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: appTheme.pink900,
                                border: Border.all(
                                    color: appTheme.whiteA700, width: 7.0),
                              ),
                            ),
                    ),
                    Container(
                      width: 236.v,
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      padding: controller.currentImageCount.value > 1
                          ? EdgeInsets.zero
                          : const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: appTheme.pink900,
                      ),
                      child: controller.currentImageCount.value > 1
                          ? Icon(
                              Icons.check,
                              color: appTheme.whiteA700,
                              size: 20,
                            )
                          : Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: appTheme.pink900,
                                border: Border.all(
                                    color: appTheme.whiteA700, width: 7.0),
                              ),
                            ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: controller.currentImageCount.value < 2
                      ? controller.captureImage
                      : () {
                          Get.back();
                        },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appTheme.black,
                    ),
                    height: 70.h,
                    width: 70.v,
                    child: Icon(
                      controller.currentImageCount.value < 2
                          ? Icons.camera
                          : Icons.check,
                      color: appTheme.whiteA700,
                      size: 20.v,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
