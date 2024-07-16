import '../../../core/app_export.dart';
import '../controller/add_t_a_bill_controller.dart';

/// A binding class for the NewEditTABill2ndScreen.
///
/// This class ensures that the NewEditTABill2ndController is created when the
/// NewEditTABill2ndScreen is first loaded.
class AddTABillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddTABillController());
  }
}
