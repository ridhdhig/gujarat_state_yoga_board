import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/add_monthly_reporting_controller.dart';

class ViewMonthlyReportingScreen
    extends GetWidget<AddMonthlyReportingController> {
  const ViewMonthlyReportingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildHeader(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          _buildDatePickerWidget(),
                          SizedBox(height: 10.v),
                          _buildMonthSection(),
                          SizedBox(height: 10.v),
                          _buildYearSectionColumn(),
                          SizedBox(height: 12.v),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(right: 2.h),
                            child: _buildDistrictCoordinatorNameSection(),
                          ),
                          SizedBox(height: 10.v),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(right: 2.h),
                            child: _buildDistrictManapaSection(),
                          ),
                          SizedBox(height: 22.v),
                          _buildNewTraineeCounts(),
                          SizedBox(height: 22.v),
                          _buildNewTraineeRegistration(),
                          SizedBox(height: 20.v),
                          _buildStartNewYogaClass(),
                          SizedBox(height: 22.v),
                          _buildTalukaVisit(),
                          SizedBox(height: 20.v),
                          _buildYogaSavandProgram(),
                          SizedBox(height: 22.v),
                          _buildYogaCampProgram(),
                          SizedBox(height: 20.v),
                          _buildYogaClassEmpowermentCampaign(),
                          SizedBox(height: 22.v),
                          _buildVisitYogaClasses(),
                          SizedBox(height: 18.v),
                          _buildYogCoach(),
                          SizedBox(height: 22.v),
                          _buildYogaTrainerInterview(),
                          SizedBox(height: 20.v),
                          _buildMOUWork(),
                          SizedBox(height: 20.v),
                          _buildOfficeYogaProgram(),
                          SizedBox(height: 24.v),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(right: 2.h),
                            child: _buildOtherYougActivity(),
                          ),
                          SizedBox(height: 12.v),
                          _buildPhotoupload(),
                          SizedBox(height: 12.v),
                          _buildDeleteButton(),
                          SizedBox(height: 12.v),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Header Section Widget
  AppBar _buildHeader() {
    return AppBar(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          onTapImgArrowleftone();
        },
      ),
      title: Text(
        "msg_monthly_reporting".tr,
        style: theme.textTheme.titleLarge,
      ),
      centerTitle: true,
    );
  }

  Widget _buildDatePickerWidget() {
    return SizedBox(
      width: double.maxFinite,
      height: 48.h,
      child: GestureDetector(
        onTap: () => onTapDOBSelection(),
        child: Container(
          margin: EdgeInsets.only(
            right: 2.v,
          ),
          padding: EdgeInsets.only(
            left: 12.v,
            right: 12.v,
            top: 10.h,
            bottom: 10.h,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Text(
                  DateFormat('MMMM')
                      .format(controller.selectdate.value.currentDate!.value),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                    color: appTheme.whiteA700,
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

  /// Month Section Widget
  Widget _buildMonthSection() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6.0),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Text(
            "lbl_month".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            DateFormat("MMM").format(DateTime.now()).toUpperCase(),
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Year Section Widget
  Widget _buildYearSectionColumn() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6.0),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Text(
            "lbl32".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            "2024",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// District Coordinator Section Widget
  Widget _buildDistrictCoordinatorNameSection() {
    return Container(
      height: 78.h,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6.0),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "msg11".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            "રાહુલભાઇ",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// District Manapa Section Widget
  Widget _buildDistrictManapaSection() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6.0),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Text(
            "lbl33".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            "ખેડા - નડિયાદ",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  _buildTextFiledViewContainer(String title, String value) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6.0),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            value,
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// New Trainee Counts Section Widget
  Widget _buildNewTraineeCounts() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg12".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  /// New Trainee Registration Section Widget
  Widget _buildNewTraineeRegistration() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg14".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  /// Start New Yoga Class Section Widget
  Widget _buildStartNewYogaClass() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_32".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  /// Taluka Visit Section Widget
  Widget _buildTalukaVisit() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg15".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  /// Yoga Savand Program Section Widget
  Widget _buildYogaSavandProgram() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg16".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  /// Yoga Camp Program Section Widget
  Widget _buildYogaCampProgram() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg17".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  /// Details of Yoga Class Empowerment Campaign Section Widget
  Widget _buildYogaClassEmpowermentCampaign() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg18".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  /// Visit Yoga Classes Section Widget
  Widget _buildVisitYogaClasses() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg19".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  /// Yoga Coach Section Widget
  Widget _buildYogCoach() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(10.h),
          decoration: AppDecoration.outlineLime.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg20".tr,
                style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
              ),
              SizedBox(height: 2.v),
              SizedBox(height: 2.v),
              _buildTextFiledViewContainer(
                "lbl35".tr,
                "12",
              ),
              SizedBox(height: 12.v),
              _buildTextFiledViewContainer(
                "msg13".tr,
                "12",
              ),
              SizedBox(height: 12.v),
              _buildTextFiledViewContainer(
                "lbl36".tr,
                "12",
              ),
            ],
          ),
        )
      ],
    );
  }

  /// Yoga Trainer Interview Section Widget
  Widget _buildYogaTrainerInterview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(10.h),
          decoration: AppDecoration.outlineLime.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg21".tr,
                style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
              ),
              SizedBox(height: 2.v),
              SizedBox(height: 2.v),
              _buildTextFiledViewContainer(
                "lbl35".tr,
                "12",
              ),
              SizedBox(height: 12.v),
              _buildTextFiledViewContainer(
                "msg13".tr,
                "12",
              ),
              SizedBox(height: 12.v),
              _buildTextFiledViewContainer(
                "lbl36".tr,
                "12",
              ),
            ],
          ),
        )
      ],
    );
  }

  /// MOU Workw Section Widget
  Widget _buildMOUWork() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(10.h),
          decoration: AppDecoration.outlineLime.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_mou".tr,
                style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
              ),
              SizedBox(height: 2.v),
              SizedBox(height: 2.v),
              _buildTextFiledViewContainer(
                "lbl35".tr,
                "12",
              ),
              SizedBox(height: 12.v),
              _buildTextFiledViewContainer(
                "msg13".tr,
                "12",
              ),
              SizedBox(height: 12.v),
              _buildTextFiledViewContainer(
                "lbl36".tr,
                "12",
              ),
            ],
          ),
        )
      ],
    );
  }

  /// Office Yoga Program Section Widget
  Widget _buildOfficeYogaProgram() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg22".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 2.v),
          SizedBox(height: 2.v),
          _buildTextFiledViewContainer(
            "lbl35".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "msg13".tr,
            "12",
          ),
          SizedBox(height: 12.v),
          _buildTextFiledViewContainer(
            "lbl36".tr,
            "12",
          ),
        ],
      ),
    );
  }

  Widget _buildOtherYougActivity() {
    return Container(
      height: 102.h,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6.0),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "msg23".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            'msg24'.tr,
            style: CustomTextStyles.bodyLargeGray700,
          ),
        ],
      ),
    );
  }

  /// Upload Signature Section Widget
  Widget _buildPhotoupload() {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6.0),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_uploaded_sign".tr,
            style: CustomTextStyles.bodyLargeGray700,
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgDefaultPassport,
            height: 250.v,
            width: double.infinity,
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Save Button Section Widget
  Widget _buildDeleteButton() {
    return CustomElevatedButton(
      text: "lbl_delete".tr,
      margin: EdgeInsets.only(right: 2.h),
      buttonTextStyle: CustomTextStyles.bodyLargeBaloo2OnPrimaryContainer18,
      onPressed: () {
        controller.showDeleteConfirmationDialogue();
      },
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowleftone() {
    Get.toNamed(AppRoutes.homeScreenContainerScreen);
  }
}
