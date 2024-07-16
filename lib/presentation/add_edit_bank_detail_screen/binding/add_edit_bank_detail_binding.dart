import '../../../core/app_export.dart';
import '../controller/add_edit_bank_detail_controller.dart';

/// A binding class for the NewEditMonthlyReportingDhiwiseScreen.
///
/// This class ensures that the NewEditMonthlyReportingDhiwiseController is created when the
/// NewEditMonthlyReportingDhiwiseScreen is first loaded.
class AddEditBankDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddEditBankDetailsController());
  }
}
