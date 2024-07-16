import '../../../core/app_export.dart';
import '../controller/add_coordinator_tours_per_view_controller.dart';

/// A binding class for the EditCoordinatorToursPerViewScreen.
///
/// This class ensures that the EditCoordinatorToursPerViewController is created when the
/// EditCoordinatorToursPerViewScreen is first loaded.
class AddCoordinatorToursPerViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCoordinatorToursPerViewController());
  }
}
