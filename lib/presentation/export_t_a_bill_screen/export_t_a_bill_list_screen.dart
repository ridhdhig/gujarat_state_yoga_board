import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../t_a_bill_list/controller/t_a_bill_controller.dart';

class ExportTABillListScreen extends GetWidget<TABillListController> {
  const ExportTABillListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildDatePickerWidget(),
            SizedBox(
              height: 12.h,
            ),
            Divider(
              color: appTheme.secondaryColor,
              thickness: 1.5,
              height: 2.0,
            ),
            SizedBox(
              height: 12.h,
            ),
            _buildTABillListRecord(),
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
        text: "lbl_t_a_bill".tr,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            ImageConstant.imgExport,
            height: 26.h,
            width: 22.v,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

  Widget _buildDatePickerWidget() {
    return SizedBox(
      width: double.maxFinite,
      height: 48.h,
      child: GestureDetector(
        onTap: () => onTapDOBSelection(),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 8.v,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: appTheme.gray50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Text(
                  "Select Month",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCalender,
                height: 24.adaptSize,
                width: 24.adaptSize,
              )
            ],
          ),
        ),
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
              Get.toNamed(AppRoutes.exportTABillScreen);
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

  _buildTABillListRecord() {
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
                    'lbl_visit_expense'.tr,
                    style: TextStyle(
                      color: appTheme.orange50,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    DateFormat("MMM")
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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.exportTABillScreen);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        height: 80.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.tABillListBgImage,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.v, vertical: 15.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tour ${index + 1}',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Kheda',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
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
