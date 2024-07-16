import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:intl/intl.dart';

import '../../core/utils/date_time_utils.dart';
import '../../presentation/add_view_monthly_reporting_screen/controller/add_monthly_reporting_controller.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class MonthlyReportingListScreen extends GetWidget<AddMonthlyReportingController> {
  const MonthlyReportingListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildMonthlyReportingListRecord(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: InkWell(
        onTap: () {
          onTapArrowleftone();
        },
        child: Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_monthly_reporting".tr,
      ),
    );
  }


  Future<void> onTapDOBSelection() async {
    DateTime? dateTime = await showMonthPicker(
        context: Get.context!,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        cancelWidget: SizedBox.shrink(),
        confirmWidget: CustomElevatedButton(
          text: 'Next',
          onPressed: () {
            Get.back();
            Future.delayed(const Duration(microseconds: 100), () {
              Get.toNamed(AppRoutes.addTABill);
            });
          },
        ),
        selectedMonthBackgroundColor: appTheme.orangeA400,
        backgroundColor: appTheme.orange50,
        customWidth: 400,
        roundedCornersRadius: 10.0,
        headerTextColor: appTheme.pink900,
        headerColor: appTheme.orange50,
        hideHeaderRow: true);
    if (dateTime != null) {
      controller.selectdate.value.currentDate!.value = dateTime;
      controller.selectdate.value.date.value =
          dateTime.format(pattern: dateTimeFormatPattern);
    }
  }

  _buildMonthlyReportingListRecord() {
    return Obx(
      () => Expanded(
        child: Column(
          children: [
            Container(
              height: 48.h,
              decoration: BoxDecoration(
                color: appTheme.orangeA400,
                borderRadius: BorderRadius.circular(6.0),
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(12.h),
              child: Row(
                children: [
                  Text(
                    'lbl_month'.tr,
                    style: TextStyle(
                      color: appTheme.orange50,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    DateFormat("MMMM")
                        .format(controller.selectdate.value.currentDate!.value)
                        .toUpperCase(),
                    style: TextStyle(
                      color: appTheme.orange50,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.viewMonthlyBill);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        height: 80.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.monthlyBillListBgImage,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.v, vertical: 15.h),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bill ${index + 1}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Last Month',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            CustomElevatedButton(
              text: 'Add Monthly Reporting',
              onPressed: () {
                Get.toNamed(AppRoutes.addMonthlyBill);
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
