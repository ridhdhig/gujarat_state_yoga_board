import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../edit_coordinator_tours_per_view_screen/controller/edit_coordinator_tours_per_view_controller.dart';
// ignore_for_file: must_be_immutable

class ViewDailyTourScreen
    extends GetWidget<EditCoordinatorToursPerViewController> {
  const ViewDailyTourScreen({Key? key})
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
          padding: EdgeInsets.only(top: 10.v),
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  _buildTourCard(),
                  SizedBox(height: 24.v),
                  _buildDateViewWidget(),
                  SizedBox(height: 12.v),
                  _buildTimeCard(),
                  SizedBox(height: 12.v),
                  _buildLocationCard(),
                  SizedBox(height: 12.v),
                  _buildDistrictCard(),
                  SizedBox(height: 12.v),
                  _buildTalukaCard(),
                  SizedBox(height: 12.v),
                  _buildVisitingPurposeCard(),
                  SizedBox(height: 12.v),
                  _buildPresentCountCard(),
                  SizedBox(height: 12.v),
                  _buildWardNoCard(),
                  SizedBox(height: 12.v),
                  _buildPhotoCard(),
                  SizedBox(height: 12.v),
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
      leadingWidth: 48.h,
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
    );
  }

  /// Section Widget
  Widget _buildTourCard() {
    return Container(
      height: 90,
      width: double.maxFinite,
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
            'Tour 1',
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
    );
  }

  Widget _buildDateViewWidget() {
    return SizedBox(
      width: double.maxFinite,
      height: 48.h,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 8.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: appTheme.orangeA400,
        ),
        alignment: Alignment.centerLeft,
        child: Text(
          "Date: 12/07/2024",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.titleMedium!.copyWith(
            height: 1.50,
            color: appTheme.whiteA700,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeCard() {
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
            "lbl".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " ${"lbl_12_00p_m".tr}",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationCard() {
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
            "location".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            "lbl_palanpur".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDistrictCard() {
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
            "lbl3".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Kheda",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  Widget _buildTalukaCard() {
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
            "lbl2".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Mahemdabad",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWardNoCard() {
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
            "lbl4".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 102",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVisitingPurposeCard() {
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
            "lbl5".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Yoga Sibir",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPresentCountCard() {
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
            "msg2".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 100",
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotoCard() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
        color: appTheme.gray50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_live_session_photo".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  '1. ${"lbl_stage".tr}',
                  style: TextStyle(
                    color: appTheme.black,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                _buildNetworkImageViewer(
                    "https://swatvayogastudio.com/wp-content/uploads/2023/09/IMG-20200804-WA0009-1024x767.jpg"),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  '2. ${"lbl_audience".tr}',
                  style: TextStyle(
                    color: appTheme.black,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                _buildNetworkImageViewer(
                    "https://content3.jdmagicbox.com/comp/gandhinagar-gujarat/l7/9999pxx79.xx79.200318221805.i6l7/catalogue/anayas-yoga-center-randesan-gandhinagar-gujarat-yoga-centres-1jq7l9iw5s.jpg"),
              ],
            ),
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }

  Widget _buildNetworkImageViewer(String imageUrl) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 106.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
