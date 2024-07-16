import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/enums/zone_enum.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_t_a_bill_controller.dart'; // ignore_for_file: must_be_immutable

class AddTABillScreen extends GetWidget<AddTABillController> {
  const AddTABillScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                _buildVisitMonthExpense(),
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
                _buildSaveButton(),
                SizedBox(height: 24.v),
              ],
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

  /// Section Widget
  Widget _buildVisitMonth() {
    return CustomTextFormField(
      controller: controller.artistMonthController,
      hintText: "lbl7".tr,
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// Section Widget
  Widget _buildVisitMonthExpense() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg3".tr,
            style: CustomTextStyles.bodyLargeBaloo2_1,
          ),
          SizedBox(height: 4.v),
          _buildVisitMonth()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPositionColumn() {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(
          microseconds: 200,
        ),
        width: double.maxFinite,
        height: 220.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineLime.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "lbl10".tr,
                        style: CustomTextStyles.bodyLargeBaloo2_1,
                      ),
                      SizedBox(
                        width: 5.v,
                      ),
                      Text(
                        "lbl11".tr,
                        style: CustomTextStyles.bodyLargeBaloo2_1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.v),
            SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  CustomRadioButton<Zone>(
                    text: "lbl11".tr,
                    value: Zone.state,
                    groupValue: controller.hoddo.value,
                    textStyle: theme.textTheme.bodyLarge,
                    onChange: (value) {
                      controller.hoddo.value = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: CustomRadioButton<Zone>(
                      text: "lbl12".tr,
                      value: Zone.zone,
                      groupValue: controller.hoddo.value,
                      textStyle: theme.textTheme.bodyLarge,
                      onChange: (value) {
                        controller.hoddo.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.v),
                    child: CustomRadioButton<Zone>(
                      text: "lbl13".tr,
                      value: Zone.district,
                      groupValue: controller.hoddo.value,
                      textStyle: theme.textTheme.bodyLarge,
                      onChange: (value) {
                        controller.hoddo.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: CustomRadioButton<Zone>(
                      text: "lbl14".tr,
                      value: Zone.mahanagarpalika,
                      groupValue: controller.hoddo.value,
                      textStyle: theme.textTheme.bodyLarge,
                      onChange: (value) {
                        controller.hoddo.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 6.v)
          ],
        ),
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
  Widget _buildDepartureTime() {
    return CustomTextFormField(
      controller: controller.departureTimeController,
      hintText: "4:30pm",
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildDepartureTimeColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl18".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.v),
          _buildDepartureTime()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeparturePlace() {
    return CustomTextFormField(
      controller: controller.departureTimeController,
      hintText: "Ahmedabad",
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildDeparturePlaceColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl19".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.v),
          _buildDeparturePlace()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalDate() {
    return CustomTextFormField(
      controller: controller.departureTimeController,
      hintText: "23/08/2024",
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildArrivalDateColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl23".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.v),
          _buildArrivalDate()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalTime() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "4:30pm".tr,
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildArrivalTimeColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl24".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildArrivalTime()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalPlace() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "Anand".tr,
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildArrivalPlaceColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl25".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildArrivalPlace()
        ],
      ),
    );
  }

  Widget _buildDepartureDate2() {
    return CustomTextFormField(
      controller: controller.departureTimeController,
      hintText: "23/08/2024",
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildDepartureDateColumn2() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl15".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.v),
          _buildDepartureDate2()
        ],
      ),
    );
  }

  Widget _buildDepartureTime2() {
    return CustomTextFormField(
      controller: controller.departureTimeController,
      hintText: "4:30pm",
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildDepartureTimeColumn2() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl18".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.v),
          _buildDepartureTime2()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeparturePlace2() {
    return CustomTextFormField(
      controller: controller.departureTimeController,
      hintText: "Ahmedabad",
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildDeparturePlaceColumn2() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl19".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.v),
          _buildDeparturePlace2()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalDate2() {
    return CustomTextFormField(
      controller: controller.departureTimeController,
      hintText: "23/08/2024",
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildArrivalDateColumn2() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl23".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.v),
          _buildArrivalDate2()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalTime2() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "4:30pm".tr,
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildArrivalTimeColumn2() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl24".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildArrivalTime2()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrivalPlace2() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "Anand".tr,
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildArrivalPlaceColumn2() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl25".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildArrivalPlace2()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalKm() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "150",
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildTotalKmColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl29".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildTotalKm()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrKm06Rs() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "150",
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildPrKm06RsColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_06".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildPrKm06Rs()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalTourExpenceRs() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "150",
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildTotalTourExpenceRsColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg7".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildTotalTourExpenceRs()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodExpenceRs() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "150",
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildFoodExpenceRsColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl30".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildFoodExpenceRs()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildResidenceExpenceRs() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "150",
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildResidenceExpenceRsColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg8".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildResidenceExpenceRs()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalExpenceRs() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "150",
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Section Widget
  Widget _buildTotalExpenceRsColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg7".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildTotalExpenceRs()
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

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
      text: "lbl_save".tr,
      onPressed: () {
        onTapSaveButton();
      },
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
      child: Obx(
        () => Column(
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
              child: controller.imageBytes?.value == null ||
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
            SizedBox(height: 6.v),
            (controller.imageBytes?.value == null)
                ? _buildUploadButton()
                : SizedBox.shrink(),
            SizedBox(height: 2.v)
          ],
        ),
      ),
    );
  }

  Widget _buildUploadButton() {
    return CustomElevatedButton(
      onPressed: () => controller.openSignaturePad(),
      height: 44.v,
      text: "lbl_upload".tr,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
    );
  }
  // return CustomImageView(
  //   imagePath: ImageConstant.imgPhotoUpload,
  //   height: 356.v,
  //   width: double.maxFinite,
  // );

  /// Common widget
  Widget _buildZoneNameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ઝોન/જિલ્લાનું નામ:",
          style: CustomTextStyles.bodyLargeBaloo2_1,
        ),
        SizedBox(height: 2.v),
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 10.h,
            top: 8.v,
            bottom: 8.v,
          ),
          decoration: AppDecoration.outlineLime.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ખેડા",
                style: CustomTextStyles.titleMediumNotoSansGujarati,
              ),
              SizedBox(height: 6.v)
            ],
          ),
        )
      ],
    );
  }

  Widget _buildCoordinatorNameTextField() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "Rahulbhai",
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Common widget
  Widget _buildCoordinatorName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg4".tr,
          style: CustomTextStyles.bodyLargeBaloo2_1,
        ),
        SizedBox(height: 2.v),
        _buildCoordinatorNameTextField(),
      ],
    );
  }

  Widget _buildDepatureDateTextField() {
    return CustomTextFormField(
      controller: controller.arrivalTimeController,
      hintText: "20/06/2024",
      textInputAction: TextInputAction.done,
      hintStyle: CustomTextStyles.titleMediumNotoSansGujarati,
    );
  }

  /// Common widget
  Widget _buildDepatureDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl15".tr,
          style: CustomTextStyles.bodyLargeBaloo2_1,
        ),
        SizedBox(height: 2.v),
        _buildDepatureDateTextField(),
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  onTapSaveButton() {
    Get.back();
  }
}
