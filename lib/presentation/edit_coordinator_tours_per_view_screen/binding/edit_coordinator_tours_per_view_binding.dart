import '../../../core/app_export.dart';
import '../controller/edit_coordinator_tours_per_view_controller.dart';

/// A binding class for the EditCoordinatorToursPerViewScreen.
///
/// This class ensures that the EditCoordinatorToursPerViewController is created when the
/// EditCoordinatorToursPerViewScreen is first loaded.
class EditCoordinatorToursPerViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditCoordinatorToursPerViewController());
  }
}
