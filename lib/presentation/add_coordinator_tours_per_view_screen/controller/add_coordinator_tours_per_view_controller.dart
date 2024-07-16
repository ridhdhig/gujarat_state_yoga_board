import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/app_export.dart';
import '../models/add_coordinator_tours_per_view_model.dart';

/// A controller class for the EditCoordinatorToursPerViewScreen.
///
/// This class manages the state of the EditCoordinatorToursPerViewScreen, including the
/// current editCoordinatorToursPerViewModelObj
class AddCoordinatorToursPerViewController extends GetxController {
  TextEditingController timeEditController = TextEditingController();

  TextEditingController locationEditController = TextEditingController();

  TextEditingController talukaEditController = TextEditingController();

  TextEditingController districtEditController = TextEditingController();

  TextEditingController wardNumberEditController = TextEditingController();

  TextEditingController travelReasonEditController = TextEditingController();

  TextEditingController attendanceNumberEditController =
      TextEditingController();

  Rx<AddCoordinatorToursPerViewModel> editCoordinatorToursPerViewModelObj =
      AddCoordinatorToursPerViewModel().obs;

  var capturedImages = <XFile>[].obs;

  @override
  void onClose() {
    super.onClose();
    timeEditController.dispose();
    locationEditController.dispose();
    talukaEditController.dispose();
    districtEditController.dispose();
    wardNumberEditController.dispose();
    travelReasonEditController.dispose();
    attendanceNumberEditController.dispose();
  }
}
