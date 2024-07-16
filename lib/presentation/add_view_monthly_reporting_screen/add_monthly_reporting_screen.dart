import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_monthly_reporting_controller.dart';

class AddMonthlyReportingScreen
    extends GetWidget<AddMonthlyReportingController> {
  const AddMonthlyReportingScreen({Key? key}) : super(key: key);

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
                          _buildSaveButton()
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

  /// Month Section Widget
  Widget _buildMonthSection() {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.only(
        left: 12.h,
        top: 10.v,
        bottom: 10.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_month".tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              DateFormat('MMM').format(DateTime.now()),
              style: CustomTextStyles
                  .titleMediumNotoSansGujaratiOnPrimaryContainer,
            ),
          )
        ],
      ),
    );
  }

  /// Year Section Widget
  Widget _buildYearSection() {
    return CustomTextFormField(
      controller: controller.yearSectionController,
      hintText: "2024",
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// Year Section Widget
  Widget _buildYearSectionColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl32".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildYearSection()
        ],
      ),
    );
  }

  /// District Coordinator Section Widget
  Widget _buildDistrictCoordinatorName() {
    return CustomTextFormField(
      controller: controller.districtCoordinatorNameController,
      hintText: "રાહુલભાઇ",
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// District Coordinator Section Widget
  Widget _buildDistrictCoordinatorNameSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg11".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 6.v),
        _buildDistrictCoordinatorName()
      ],
    );
  }

  /// District Manapa Section Widget
  Widget _buildDistrictManapa() {
    return CustomTextFormField(
      controller: controller.districtManapaController,
      hintText: "ખેડા - નડિયાદ",
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// District Manapa Section Widget
  Widget _buildDistrictManapaSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl33".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 6.v),
        _buildDistrictManapa()
      ],
    );
  }

  /// New Trainee Counts Section Widget
  Widget _buildPastWorkSection(
      {TextEditingController? textController, String? hintText}) {
    return CustomTextFormField(
      controller: textController,
      hintText: hintText,
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// New Trainee Counts Section Widget
  Widget _buildCurrentWorkSection(
      {TextEditingController? textController, String? hintText}) {
    return CustomTextFormField(
      controller: textController,
      hintText: hintText,
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// New Trainee Counts Section Widget
  Widget _buildTotalWorkSection(
      {TextEditingController? textController, String? hintText}) {
    return CustomTextFormField(
      controller: textController,
      hintText: hintText,
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// New Trainee Counts Section Widget
  Widget _buildNewTraineeCounts() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg12".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildPastWorkSection(
                  textController: controller.pastWorkSectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWorkSectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWorkSectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// New Trainee Registration Section Widget
  Widget _buildNewTraineeRegistration() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg14".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildPastWorkSection(
                  textController: controller.pastWork1SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork1SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork1SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Start New Yoga Class Section Widget
  Widget _buildStartNewYogaClass() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_32".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork2SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork2SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork2SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Taluka Visit Section Widget
  Widget _buildTalukaVisit() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg15".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork3SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork3SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork3SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Yoga Savand Program Section Widget
  Widget _buildYogaSavandProgram() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg16".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork4SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork4SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork4SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Yoga Camp Program Section Widget
  Widget _buildYogaCampProgram() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg17".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork5SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork5SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork5SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Details of Yoga Class Empowerment Campaign Section Widget
  Widget _buildYogaClassEmpowermentCampaign() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg18".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork6SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork6SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork6SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Visit Yoga Classes Section Widget
  Widget _buildVisitYogaClasses() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg19".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork7SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork7SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork7SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Yoga Coach Section Widget
  Widget _buildYogCoach() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg20".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork8SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork8SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork8SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Yoga Trainer Interview Section Widget
  Widget _buildYogaTrainerInterview() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg21".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork9SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork9SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork9SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// MOU Workw Section Widget
  Widget _buildMOUWork() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_mou".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork10SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork10SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork10SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Office Yoga Program Section Widget
  Widget _buildOfficeYogaProgram() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg22".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 2.v),
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
                  "lbl35".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                _buildPastWorkSection(
                  textController: controller.pastWork11SectionController,
                  hintText: "12",
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg13".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildCurrentWorkSection(
                  textController: controller.currentWork11SectionController,
                  hintText: "14",
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl36".tr,
                  style: CustomTextStyles.bodyLargeGray700,
                ),
                SizedBox(height: 4.v),
                _buildTotalWorkSection(
                  textController: controller.totalWork11SectionController,
                  hintText: "14",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildOtherYougActivity() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg23".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(height: 4.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.outlineLime.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Text(
              "msg24".tr,
              style: CustomTextStyles.bodyLargeGray700,
            ),
          )
        ],
      ),
    );
  }

  /// Upload Signature Section Widget
  Widget _buildPhotoUploadSection() {
    return CustomElevatedButton(
      text: "lbl_upload".tr,
      onPressed: () {
        controller.openSignaturePad();
      },
    );
  }

  /// Upload Signature Section Widget
  Widget _buildPhotoupload() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg10".tr,
            style: CustomTextStyles.bodyLargeGray700,
          ),
          SizedBox(height: 4.v),
          Container(
            width: double.maxFinite,
            // decoration: AppDecoration.outlineLime.copyWith(
            //   borderRadius: BorderRadiusStyle.roundedBorder6,
            // ),
            child: Text(
              "msg_note_sign_need".tr,
              style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
            ),
          ),
          SizedBox(height: 8.v),
          Obx(
            () => controller.imageBytes?.value == null ||
                    controller.imageBytes?.value.lengthInBytes == 0
                ? CustomImageView(
                    imagePath: ImageConstant.imgPhotoUpload,
                    height: 120.h,
                    width: double.infinity,
                    imageHeight: 120.h,
                    imageWidth: double.infinity,
                  )
                : Image.memory(
                    controller.imageBytes!.value.buffer.asUint8List(),
                    fit: BoxFit.fill,
                  ),
          ),
          SizedBox(height: 8.v),
          _buildPhotoUploadSection(),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }

  /// Save Button Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
      text: "lbl_save".tr,
      margin: EdgeInsets.only(right: 2.h),
      buttonTextStyle: CustomTextStyles.bodyLargeBaloo2OnPrimaryContainer18,
      onPressed: () {
        Get.toNamed(AppRoutes.viewMonthlyBill);
      },
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowleftone() {
    Get.back();
  }
}
