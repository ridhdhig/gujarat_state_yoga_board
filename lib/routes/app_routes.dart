import 'package:gujarat_state_yoga_board/presentation/add_coordinator_tours_per_view_screen/widget/capture_image.dart';

import '../core/app_export.dart';
import '../presentation/add_edit_bank_detail_screen/add_bank_detail_screen.dart';
import '../presentation/add_edit_bank_detail_screen/binding/add_edit_bank_detail_binding.dart';
import '../presentation/add_edit_bank_detail_screen/view_edit_bank_detail_screen.dart';
import '../presentation/add_view_monthly_reporting_screen/add_monthly_reporting_screen.dart';
import '../presentation/add_view_monthly_reporting_screen/binding/add_monthly_reporting_binding.dart';
import '../presentation/add_t_a_bill_screen/add_t_a_bill_screen.dart';
import '../presentation/add_t_a_bill_screen/binding/add_t_a_bill_binding.dart';
import '../presentation/add_view_monthly_reporting_screen/monthly_reporting_list.dart';
import '../presentation/add_view_monthly_reporting_screen/view_monthly_reporting_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/capture_images/capture_image_bindings/capture_image_bindings.dart';
import '../presentation/change_password/binding/change_password_binding.dart';
import '../presentation/change_password/change_password_screen.dart';
import '../presentation/create_account_form/binding/create_account_form_two_binding.dart';
import '../presentation/create_account_form/create_account_form.dart';
import '../presentation/create_account_screen/binding/create_account_binding.dart';
import '../presentation/create_account_screen/create_account_screen.dart';
import '../presentation/add_coordinator_tours_per_view_screen/binding/add_coordinator_tours_per_view_binding.dart';
import '../presentation/add_coordinator_tours_per_view_screen/add_coordinator_tours_per_view_screen.dart';
import '../presentation/edit_coordinator_tours_per_view_screen/binding/edit_coordinator_tours_per_view_binding.dart';
import '../presentation/edit_coordinator_tours_per_view_screen/edit_coordinator_tours_per_view_screen.dart';
import '../presentation/export_daily_tour_screen/export_daily_tour_screen.dart';
import '../presentation/export_daily_tour_screen/view_daily_tour_screen.dart';
import '../presentation/export_monthly_reporting_screen/export_monthly_reporting_list_screen.dart';
import '../presentation/export_monthly_reporting_screen/export_monthly_reporting_screen.dart';
import '../presentation/export_t_a_bill_screen/export_t_a_bill_list_screen.dart';
import '../presentation/export_t_a_bill_screen/export_t_a_bill_screen.dart';
import '../presentation/home_screen/binding/home_screen_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/my_profile_scree.dart/binding/my_profile_binding.dart';
import '../presentation/my_profile_scree.dart/my_profile_screen.dart';
import '../presentation/sign_in_up_screen/binding/sign_in_up_binding.dart';
import '../presentation/sign_in_up_screen/sign_in_up_screen.dart';
import '../presentation/signin_screen/binding/signin_binding.dart';
import '../presentation/signin_screen/signin_screen.dart';
import '../presentation/t_a_bill_list/binding/t_a_bill_binding.dart';
import '../presentation/t_a_bill_list/t_a_bill_list_screen.dart';
import '../presentation/update_signature_screen.dart/binding/update_signature_binding.dart';
import '../presentation/update_signature_screen.dart/update_signature_screen.dart';
import '../presentation/view_t_a_bill_screen/view_t_a_bill_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {
  static const String signInUpScreen = '/sign_in_up_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String createAccountFormTwoScreen =
      '/create_account_form_two_screen';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String exportDailyTourScreen = '/export_daily_tour_screen';

  static const String exportMonthlyReportingListScreen =
      '/export_monthly_reporting_list_screen';

  static const String exportMonthlyReportingScreen =
      '/export_monthly_reporting_screen';

  static const String exportTABillListScreen = '/export_t_a_bill_list_screen';

  static const String exportTABillScreen = '/export_t_a_bill_screen';

  static const String viewDailyTourScreen = '/view_daily_tour_screen';

  static const String addCoordinatorToursPerViewScreen =
      '/add_coordinator_tours_per_view_screen';

  static const String editCoordinatorToursPerViewScreen =
      '/edit_coordinator_tours_per_view_screen';

  static const String captureImage = '/capture_image';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String myProfile = '/my_profile';

  static const String tABillList = '/t_a_bill_list';

  static const String addTABill = '/add_new_t_a_bill';

  static const String viewTABill = '/view_new_t_a_bill';

  static const String addMonthlyBill = '/add_monthly_bill';

  static const String listMonthlyBill = '/list_monthly_bill';

  static const String viewMonthlyBill = '/view_monthly_bill';

  static const String updatePassword = '/update_password';

  static const String updateSignature = '/update_sinature';

  static const String addBankDetail = '/add_bank_detail';

  static const String editBankDetail = '/edit_bank_detail';

  static List<GetPage> pages = [
    GetPage(
      name: signInUpScreen,
      page: () => SignInUpScreen(),
      bindings: [SignInUpBinding()],
    ),
    GetPage(
      name: createAccountScreen,
      page: () => CreateAccountScreen(),
      bindings: [CreateAccountBinding()],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [SignInBinding()],
    ),
    GetPage(
      name: createAccountFormTwoScreen,
      page: () => CreateAccountForm(),
      bindings: [CreateAccountFormTwoBinding()],
    ),
    GetPage(
      name: homeScreenContainerScreen,
      page: () => HomeScreenContainerScreen(),
      bindings: [HomeScreenContainerBinding()],
    ),
    GetPage(
      name: exportDailyTourScreen,
      page: () => ExportDailyTourScreen(),
      bindings: [HomeScreenContainerBinding()],
    ),
    GetPage(
      name: exportMonthlyReportingListScreen,
      page: () => ExportMonthlyReportingListScreen(),
      bindings: [AddMonthlyReportingBinding()],
    ),
    GetPage(
      name: exportMonthlyReportingScreen,
      page: () => ExportMonthlyReportingScreen(),
      bindings: [AddMonthlyReportingBinding()],
    ),
    GetPage(
      name: viewDailyTourScreen,
      page: () => ViewDailyTourScreen(),
      bindings: [EditCoordinatorToursPerViewBinding()],
    ),
    GetPage(
      name: addCoordinatorToursPerViewScreen,
      page: () => AddCoordinatorToursPerViewScreen(),
      bindings: [AddCoordinatorToursPerViewBinding()],
    ),
    GetPage(
      name: editCoordinatorToursPerViewScreen,
      page: () => EditCoordinatorToursPerViewScreen(),
      bindings: [EditCoordinatorToursPerViewBinding()],
    ),
    GetPage(
      name: captureImage,
      page: () => CaptureImage(),
      bindings: [CaptureImageBindings()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignInUpScreen(),
      bindings: [SignInUpBinding()],
    ),
    GetPage(
      name: myProfile,
      page: () => MyProfileScreen(),
      bindings: [MyProfileBinding()],
    ),
    GetPage(
      name: tABillList,
      page: () => TABillListScreen(),
      bindings: [TABillBinding()],
    ),
    GetPage(
      name: exportTABillListScreen,
      page: () => ExportTABillListScreen(),
      bindings: [TABillBinding()],
    ),
    GetPage(
      name: addTABill,
      page: () => AddTABillScreen(),
      bindings: [AddTABillBinding()],
    ),
    GetPage(
      name: viewTABill,
      page: () => ViewTABillScreen(),
      bindings: [AddTABillBinding()],
    ),
    GetPage(
      name: exportTABillScreen,
      page: () => ExportViewTABillScreen(),
      bindings: [AddTABillBinding()],
    ),
    GetPage(
      name: addMonthlyBill,
      page: () => AddMonthlyReportingScreen(),
      bindings: [AddMonthlyReportingBinding()],
    ),
    GetPage(
      name: listMonthlyBill,
      page: () => MonthlyReportingListScreen(),
      bindings: [AddMonthlyReportingBinding()],
    ),
    GetPage(
      name: viewMonthlyBill,
      page: () => ViewMonthlyReportingScreen(),
    ),
    GetPage(
      name: updatePassword,
      page: () => ChangePasswordScreen(),
      bindings: [ChangePasswordBinding()],
    ),
    GetPage(
      name: updateSignature,
      page: () => UpdateSignatureScreen(),
      bindings: [UpdateSignatureContainerBinding()],
    ),
    GetPage(
      name: addBankDetail,
      page: () => AddBankDetailsScreen(),
      bindings: [AddEditBankDetailsBinding()],
    ),
    GetPage(
      name: editBankDetail,
      page: () => ViewEditBankDetailsScreen(),
      bindings: [AddEditBankDetailsBinding()],
    ),
  ];
}
