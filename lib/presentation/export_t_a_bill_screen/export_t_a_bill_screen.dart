import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../add_t_a_bill_screen/controller/add_t_a_bill_controller.dart'; // ignore_for_file: must_be_immutable

class ExportViewTABillScreen extends GetWidget<AddTABillController> {
  const ExportViewTABillScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Column(
                children: [
                  _buildMonthExpenseCard(),
                  SizedBox(height: 8.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildCoordinatorName(),
                  ),
                  SizedBox(height: 8.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildZoneNameColumn(),
                  ),
                  SizedBox(height: 12.v),
                  _buildPositionColumn(),
                  SizedBox(height: 10.v),
                  _buildTravelDetailsRow(),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildDepatureDate(),
                  ),
                  SizedBox(height: 12.v),
                  _buildDepartureTimeColumn(),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildDeparturePlaceColumn(),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildArrivalDateColumn(),
                  ),
                  SizedBox(height: 10.v),
                  _buildArrivalTimeColumn(),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildArrivalPlaceColumn(),
                  ),
                  SizedBox(height: 10.v),
                  _buildReturnDetailsRow(),
                  SizedBox(height: 16.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildDepartureDateColumn2(),
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildDepartureTimeColumn2(),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildDeparturePlaceColumn2(),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildArrivalTimeColumn2(),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildArrivalDateColumn2(),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildArrivalPlaceColumn2(),
                  ),
                  SizedBox(height: 8.v),
                  _buildTotalRow(),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildTotalKmColumn(),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildPrKm06RsColumn(),
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildTotalTourExpenceRsColumn(),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildFoodExpenceRsColumn(),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildResidenceExpenceRsColumn(),
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildTotalExpenceRsColumn(),
                  ),
                  SizedBox(height: 12.v),
                  _buildSignaturePad(),
                  SizedBox(height: 24.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
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
        text: "lbl_t_a_bill".tr,
      ),
    );
  }

  _buildMonthExpenseCard() {
    return Container(
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
            DateFormat("MMM").format(DateTime.now()).toUpperCase(),
            style: TextStyle(
              color: appTheme.orange50,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPositionColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl10".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " ${"lbl11".tr}",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTravelDetailsRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg6".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 6.v),
                child: Row(
                  children: [
                    Container(
                      height: 7.h,
                      width: 7.v,
                      decoration: BoxDecoration(
                        color: appTheme.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: appTheme.black,
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepartureTimeColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl18".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 4:30pm",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeparturePlaceColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl19".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Ahmedabad",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalDateColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl23".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 23/08/2024",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalTimeColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl24".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 04:40pm",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalPlaceColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl25".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Anand",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepartureDateColumn2() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl15".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 23/08/2024",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepartureTimeColumn2() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl18".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 04:30pm",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeparturePlaceColumn2() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl19".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Ahmedabad",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalDateColumn2() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl23".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 23/08/2024",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalTimeColumn2() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl24".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 05:30pm",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalPlaceColumn2() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl25".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Anand",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalKmColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl29".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 150",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrKm06RsColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_06".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 150",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalTourExpenceRsColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg7".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 150",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodExpenceRsColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl30".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 150",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildResidenceExpenceRsColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg8".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 150",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalExpenceRsColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg7".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 150",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReturnDetailsRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl27".tr,
            style: CustomTextStyles.titleMediumNotoSansGujaratiPink900,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 6.v),
                child: Row(
                  children: [
                    Container(
                      height: 7.h,
                      width: 7.v,
                      decoration: BoxDecoration(
                        color: appTheme.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: appTheme.black,
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_total".tr,
            style: CustomTextStyles.titleMediumPink900,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 6.v),
                child: Row(
                  children: [
                    Container(
                      height: 7.h,
                      width: 7.v,
                      decoration: BoxDecoration(
                        color: appTheme.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: appTheme.black,
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget _buildSignaturePad() {
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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg10".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            // padding: EdgeInsets.symmetric(vertical: 106.v),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => controller.imageBytes?.value == null
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
                // ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  // Widget _buildUploadButton() {
  //   return CustomElevatedButton(
  //     onPressed: () => controller.pickAndCropImage(),
  //     height: 44.v,
  //     text: "lbl_upload".tr,
  //     buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
  //   );
  // }

  /// Common widget
  Widget _buildZoneNameColumn() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg5".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " ખેડા",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCoordinatorName() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg4".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " રાહુલભાઇ",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDepatureDate() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl15".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 20/06/2024",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  onTapSaveButton() {
    controller.showDeleteConfirmationDialogue();
  }
}
