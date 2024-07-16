import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../presentation/home_screen/controller/home_screen_controller.dart';
import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class ExportDailyTourScreen extends GetWidget<HomeScreenContainerController> {
  const ExportDailyTourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.orange50,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(10.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDatePickerWidget(),
            SizedBox(
              height: 24.h,
            ),
            _buildDateViewWidget(),
            SizedBox(
              height: 12.h,
            ),
            _buildTourList(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 35.h,
      leading: InkWell(
        onTap: () {
          onTapArrowleftone();
        },
        child: Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_daily_reporting".tr,
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
                  "Select Date",
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

  Widget _buildDateViewWidget() {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 8.v,
        ),
        decoration: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: appTheme.gray600,
          ),
        ),
        child: SizedBox(
          child: Text(
            "Date: ${DateFormat(dateTimeFormatPattern).format(controller.selectdate.value.selectedDate!.value)}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium!.copyWith(
              height: 1.50,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTourList() {
    return Container(
      height: 343.h,
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed(
                AppRoutes.viewDailyTourScreen,
              );
            },
            child: Container(
              height: 90,
              margin: EdgeInsets.only(top: 6.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.tourBgImage,
                    ),
                    fit: BoxFit.fill),
              ),
              padding: EdgeInsets.only(left: 16.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Tour ${index + 1}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: appTheme.pink900,
                    ),
                  ),
                  Text(
                    'Yoga Sibir',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: appTheme.pink900,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> onTapDOBSelection() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.selectdate.value.currentDate!.value,
        firstDate: controller.selectdate.value.currentDate!.value,
        lastDate: DateTime(2100));
    if (dateTime != null) {
      controller.selectdate.value.currentDate!.value = dateTime;
      controller.selectdate.value.date.value =
          dateTime.format(pattern: dateTimeFormatPattern);
    }
  }

  onTapArrowleftone() {
    Get.back();
  }
}
