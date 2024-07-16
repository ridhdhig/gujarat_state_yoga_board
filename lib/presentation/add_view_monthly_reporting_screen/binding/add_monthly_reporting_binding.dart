import '../../../core/app_export.dart';
import '../controller/add_monthly_reporting_controller.dart';

/// A binding class for the NewEditMonthlyReportingDhiwiseScreen.
///
/// This class ensures that the NewEditMonthlyReportingDhiwiseController is created when the
/// NewEditMonthlyReportingDhiwiseScreen is first loaded.
class AddMonthlyReportingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddMonthlyReportingController());
  }
}
