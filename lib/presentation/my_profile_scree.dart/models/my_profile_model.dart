import '../../../core/app_export.dart';

/// This class defines the variables used in the [create_account_form_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.

class MyProfileModel {
  Rx<DateTime>? currentDate = Rx(DateTime.now());

  Rx<String> dob = Rx("dd/mm/yyyy");

  Rx<DateTime>? selectedDate = Rx(DateTime.now());

  Rx<String> date = Rx("dd/mm/yyyy");
}
