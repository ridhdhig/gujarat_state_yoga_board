import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/enums/coordinates_designation_enum.dart';
import '../../core/enums/gender_enum.dart';
import '../../core/enums/marital_status_enum.dart';
import '../../core/enums/profession_enum.dart';
import '../../core/enums/qualification_enum.dart';
import '../../core/enums/track_suite_size_enum.dart';
import '../../core/utils/date_time_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/my_profile_controller.dart';
// ignore_for_file: must_be_immutable

class MyProfileScreen extends GetWidget<MyProfileController> {
  MyProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildHeader(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Column(
                    children: [
                      Obx(
                        () => controller.isEdit.value
                            ? Column(
                                children: [
                                  _buildColumnFirstName(),
                                  SizedBox(height: 8.v),
                                  _buildColumnMiddleName(),
                                  SizedBox(height: 8.v),
                                  _buildColumnSurname(),
                                  SizedBox(height: 8.v),
                                  _buildColumnAddress(),
                                  SizedBox(height: 8.v),
                                  _buildColumnTaluka(),
                                  SizedBox(height: 8.v),
                                  _buildColumnDistrict(),
                                  SizedBox(height: 8.v),
                                  _buildColumnMobile(),
                                  SizedBox(height: 8.v),
                                  _buildColumnEmail(),
                                  SizedBox(height: 8.v),
                                  _buildGenderField(),
                                  SizedBox(height: 8.v),
                                  _buildDobField(),
                                  SizedBox(height: 8.v),
                                  _buildMaritalStatusField(),
                                  SizedBox(height: 8.v),
                                  _buildMarriageDateField(),
                                  SizedBox(height: 8.v),
                                  _buildYogCoordinatorField(),
                                  SizedBox(height: 8.v),
                                  _buildCoordinatorDistrictField(),
                                  SizedBox(height: 8.v),
                                  _buildWeightField(),
                                  SizedBox(height: 8.v),
                                  _buildEducationQualificationField(),
                                  SizedBox(height: 8.v),
                                  _buildYogaQualificationField(),
                                  SizedBox(height: 8.v),
                                  _buildProfessionField(),
                                  SizedBox(height: 8.v),
                                  _buildTrackSuiteSizeField(),
                                ],
                              )
                            : Column(
                                children: [
                                  _buildColumnFirstNameReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnMiddleNameReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnSurnameReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnAddressReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnTalukaReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnDistrictReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnMobileReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnEmailReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnGenderReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnDOBReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnMarriageReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnMarriageDateReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnYogaCoordinatorReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnDistrictOrZoneReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnWeightReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnEducationQualificationReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnYogaQualificationReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnProfessionReadOnly(),
                                  SizedBox(height: 8.v),
                                  _buildColumnTrackSuiteSizeReadOnly(),
                                  SizedBox(height: 8.v),
                                ],
                              ),
                      ),
                      SizedBox(height: 12.v),
                      _buildPhotoUploadSection(),
                      SizedBox(height: 16.v),
                      _buildNextButton(),
                      SizedBox(height: 16.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildHeader() {
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
        text: "lbl_my_profile".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameField() {
    return CustomTextFormField(
      controller: controller.firstNameFieldController,
      hintText: "lbl_enter_firstname".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnFirstName() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_first_name".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildFirstNameField()
        ],
      ),
    );
  }

  Widget _buildColumnFirstNameReadOnly() {
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
            "lbl_first_name".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Rahulbhai",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMiddleNameField() {
    return CustomTextFormField(
      controller: controller.middleNameFieldController,
      hintText: "lbl_enter_middlename".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnMiddleName() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_middle_name".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildMiddleNameField()
        ],
      ),
    );
  }

  Widget _buildColumnMiddleNameReadOnly() {
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
            "lbl_middle_name".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Devendrakumar",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSurnameField() {
    return CustomTextFormField(
      controller: controller.surnameFieldController,
      hintText: "lbl_enter_surname".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnSurname() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_surname".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildSurnameField()
        ],
      ),
    );
  }

  Widget _buildColumnSurnameReadOnly() {
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
            "lbl_surname".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Chudasama",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressField() {
    return CustomTextFormField(
      controller: controller.addressFieldController,
      hintText: "lbl_enter_address".tr,
      maxLines: 2,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnAddress() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_full_address_with".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildAddressField()
        ],
      ),
    );
  }

  Widget _buildColumnAddressReadOnly() {
    return Container(
      height: 102.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_full_address_with".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Chudasama",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTalukaField() {
    return CustomTextFormField(
      controller: controller.talukaFieldController,
      hintText: "lbl_enter_taluka".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnTaluka() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_taluka".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildTalukaField()
        ],
      ),
    );
  }

  Widget _buildColumnTalukaReadOnly() {
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
            "lbl_taluka".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Mahemdabad",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDistrictField() {
    return CustomTextFormField(
      controller: controller.districtFieldController,
      hintText: "lbl_enter_disctict".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnDistrict() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_district".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildDistrictField()
        ],
      ),
    );
  }

  Widget _buildColumnDistrictReadOnly() {
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
            "lbl_district".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Kheda",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberField() {
    return CustomTextFormField(
      controller: controller.mobileNumberFieldController,
      hintText: "lbl_enter_mobile".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildColumnMobile() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_mobile_number2".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildMobileNumberField()
        ],
      ),
    );
  }

  Widget _buildColumnMobileReadOnly() {
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
            "lbl_mobile_number2".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " +915647382920",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
      controller: controller.emailFieldController,
      hintText: "lbl_enter_email".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildColumnEmail() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email_i_d".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildEmailField()
        ],
      ),
    );
  }

  Widget _buildColumnEmailReadOnly() {
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
            "lbl_email_i_d".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " rahuldummy@gmail.com",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGenderField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_gender".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 10.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              border: Border.all(
                color: appTheme.lime400,
                width: 1.h,
              ),
            ),
            width: double.maxFinite,
            child: Obx(
              () => Column(
                children: [
                  CustomRadioButton<Gender>(
                    text: "lbl_male".tr,
                    value: Gender.male,
                    groupValue: controller.gender.value,
                    onChange: (value) {
                      controller.gender.value = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Gender>(
                      text: "lbl_female".tr,
                      value: Gender.female,
                      groupValue: controller.gender.value,
                      onChange: (value) {
                        controller.gender.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnGenderReadOnly() {
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
            "lbl_gender".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Male",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDobField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_date_of_birth".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapDOBSelection();
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.outlineLime.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 86.h,
                      child: Obx(
                        () => Text(
                          controller
                              .createAccountFormTwoModelObj.value.dob.value,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium!.copyWith(
                            height: 1.50,
                          ),
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
          )
        ],
      ),
    );
  }

  Widget _buildColumnDOBReadOnly() {
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
            "lbl_date_of_birth".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 22/02/1991",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMaritalStatusField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_marital_status".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 10.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              border: Border.all(
                color: appTheme.lime400,
                width: 1.h,
              ),
            ),
            width: double.maxFinite,
            child: Obx(
              () => Column(
                children: [
                  CustomRadioButton<MaritalStatus>(
                    text: "lbl_married".tr,
                    value: MaritalStatus.married,
                    groupValue: controller.maritalstatus.value,
                    onChange: (value) {
                      controller.maritalstatus.value = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: CustomRadioButton<MaritalStatus>(
                      text: "lbl_unmarried".tr,
                      value: MaritalStatus.unMerried,
                      groupValue: controller.maritalstatus.value,
                      onChange: (value) {
                        controller.maritalstatus.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnMarriageReadOnly() {
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
            "lbl_marital_status".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Married",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMarriageDateField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_if_married_then".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapRowdate();
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.outlineLime.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 86.h,
                      child: Obx(
                        () => Text(
                          controller
                              .createAccountFormTwoModelObj.value.date.value,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium!.copyWith(
                            height: 1.50,
                          ),
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
          ),
        ],
      ),
    );
  }

  Widget _buildColumnMarriageDateReadOnly() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_if_married_then".tr,
              style: CustomTextStyles.bodyLargeNotoSansGujarati,
            ),
            Text(
              " 20/03/2000",
              style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildYogCoordinatorField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_yog_coordinator2".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 10.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              border: Border.all(
                color: appTheme.lime400,
                width: 1.h,
              ),
            ),
            width: double.maxFinite,
            child: Obx(
              () => Column(
                children: [
                  CustomRadioButton<CoordinatesDesignation>(
                    text: "lbl_state".tr,
                    value: CoordinatesDesignation.state,
                    groupValue: controller.yogcoordinator.value,
                    onChange: (value) {
                      controller.yogcoordinator.value = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<CoordinatesDesignation>(
                      text: "lbl_zone".tr,
                      value: CoordinatesDesignation.zone,
                      groupValue: controller.yogcoordinator.value,
                      onChange: (value) {
                        controller.yogcoordinator.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<CoordinatesDesignation>(
                      text: "lbl_district2".tr,
                      value: CoordinatesDesignation.district,
                      groupValue: controller.yogcoordinator.value,
                      onChange: (value) {
                        controller.yogcoordinator.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: CustomRadioButton<CoordinatesDesignation>(
                      text: "msg_municipal_corporation".tr,
                      value: CoordinatesDesignation.municipalCorporation,
                      groupValue: controller.yogcoordinator.value,
                      onChange: (value) {
                        controller.yogcoordinator.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnYogaCoordinatorReadOnly() {
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
            "msg_yog_coordinator2".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Zone",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
      controller: controller.nameController,
      hintText: "lbl_enter_district_or_zone".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
    );
  }

  /// Section Widget
  Widget _buildCoordinatorDistrictField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_work_as_coordinator".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildName()
        ],
      ),
    );
  }

  Widget _buildColumnDistrictOrZoneReadOnly() {
    return Container(
      height: 78.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_work_as_coordinator".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            "Kheda",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeight() {
    return CustomTextFormField(
      controller: controller.weightController,
      hintText: "lbl_enter_weight".tr,
      hintStyle: CustomTextStyles.hintTextStyle,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildWeightField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_weight".tr,
            style: theme.textTheme.bodyLarge,
          ),
          _buildWeight()
        ],
      ),
    );
  }

  Widget _buildColumnWeightReadOnly() {
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
            "lbl_weight".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " 65kg",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEducationQualificationField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_education_qualification".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 10.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              border: Border.all(
                color: appTheme.lime400,
                width: 1.h,
              ),
            ),
            width: double.maxFinite,
            child: Obx(
              () => Column(
                children: [
                  CustomRadioButton<Qualification>(
                    text: "lbl_ssc".tr,
                    value: Qualification.ssc,
                    groupValue: controller.education.value,
                    onChange: (value) {
                      controller.education.value = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Qualification>(
                      text: "lbl_hsc".tr,
                      value: Qualification.hsc,
                      groupValue: controller.education.value,
                      onChange: (value) {
                        controller.education.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Qualification>(
                      text: "lbl_graduate".tr,
                      value: Qualification.graduate,
                      groupValue: controller.education.value,
                      onChange: (value) {
                        controller.education.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Qualification>(
                      text: "lbl_post_graduate".tr,
                      value: Qualification.postGraduate,
                      groupValue: controller.education.value,
                      onChange: (value) {
                        controller.education.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Qualification>(
                      text: "lbl_other".tr,
                      value: Qualification.other,
                      groupValue: controller.education.value,
                      onChange: (value) {
                        controller.education.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnEducationQualificationReadOnly() {
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
            "msg_education_qualification".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          Text(
            " Graduate",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYogaQualificationField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_education_qualification2".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 10.h,
              top: 10.v,
              bottom: 10.v,
            ),
            decoration: AppDecoration.outlineLime.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_ycb_level_1".tr,
                    value: controller.isYCBLevel1Checked.value,
                    onChange: (value) {
                      controller.isYCBLevel1Checked.value = value;
                    },
                  ),
                ),
                SizedBox(height: 16.v),
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_ycb_level_2".tr,
                    value: controller.isYCBLevel2Checked.value,
                    onChange: (value) {
                      controller.isYCBLevel2Checked.value = value;
                    },
                  ),
                ),
                SizedBox(height: 16.v),
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_ycb_level_3".tr,
                    value: controller.isYCBLevel3Checked.value,
                    onChange: (value) {
                      controller.isYCBLevel3Checked.value = value;
                    },
                  ),
                ),
                SizedBox(height: 16.v),
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_ycb_level_4".tr,
                    value: controller.isYCBLevel4Checked.value,
                    onChange: (value) {
                      controller.isYCBLevel4Checked.value = value;
                    },
                  ),
                ),
                SizedBox(height: 16.v),
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_diploma_in_yoga".tr,
                    value: controller.isDiplomaInYogaChecked.value,
                    onChange: (value) {
                      controller.isDiplomaInYogaChecked.value = value;
                    },
                  ),
                ),
                SizedBox(height: 16.v),
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_master_in_yoga".tr,
                    value: controller.isMasterInYogaChecked.value,
                    onChange: (value) {
                      controller.isMasterInYogaChecked.value = value;
                    },
                  ),
                ),
                SizedBox(height: 16.v),
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_other".tr,
                    value: controller.isOtherChecked.value,
                    onChange: (value) {
                      controller.isOtherChecked.value = value;
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnYogaQualificationReadOnly() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_education_qualification2".tr,
              style: CustomTextStyles.bodyLargeNotoSansGujarati,
            ),
            Text(
              " YCB Level-4",
              style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfessionField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_profession".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.outlineLime.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            width: double.maxFinite,
            child: Obx(
              () => Column(
                children: [
                  CustomRadioButton<Profession>(
                    text: "lbl_goverment_job".tr,
                    value: Profession.govermentJob,
                    groupValue: controller.profession.value,
                    textStyle: theme.textTheme.titleMedium,
                    onChange: (value) {
                      controller.profession.value = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Profession>(
                      text: "lbl_private_job".tr,
                      value: Profession.privateJob,
                      groupValue: controller.profession.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.profession.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Profession>(
                      text: "lbl_house_wife".tr,
                      value: Profession.houseWife,
                      groupValue: controller.profession.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.profession.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Profession>(
                      text: "lbl_business".tr,
                      value: Profession.business,
                      groupValue: controller.profession.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.profession.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<Profession>(
                      text: "lbl_other".tr,
                      value: Profession.other,
                      groupValue: controller.profession.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.profession.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnProfessionReadOnly() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_profession".tr,
              style: CustomTextStyles.bodyLargeNotoSansGujarati,
            ),
            Text(
              " Government Job",
              style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrackSuiteSizeField() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_track_suite_size".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 10.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              border: Border.all(
                color: appTheme.lime400,
                width: 1.h,
              ),
            ),
            width: double.maxFinite,
            child: Obx(
              () => Column(
                children: [
                  CustomRadioButton<TrackSuiteSize>(
                    text: "lbl_s_36".tr,
                    value: TrackSuiteSize.s36,
                    groupValue: controller.tracksuite.value,
                    textStyle: theme.textTheme.titleMedium,
                    onChange: (value) {
                      controller.tracksuite.value = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<TrackSuiteSize>(
                      text: "lbl_m_38".tr,
                      value: TrackSuiteSize.m38,
                      groupValue: controller.tracksuite.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.tracksuite.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<TrackSuiteSize>(
                      text: "lbl_l_40".tr,
                      value: TrackSuiteSize.l40,
                      groupValue: controller.tracksuite.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.tracksuite.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<TrackSuiteSize>(
                      text: "lbl_xl_42".tr,
                      value: TrackSuiteSize.xl42,
                      groupValue: controller.tracksuite.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.tracksuite.value = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: CustomRadioButton<TrackSuiteSize>(
                      text: "lbl_xxl_44".tr,
                      value: TrackSuiteSize.xxl44,
                      groupValue: controller.tracksuite.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.tracksuite.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnTrackSuiteSizeReadOnly() {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16.v),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_track_suite_size".tr,
              style: CustomTextStyles.bodyLargeNotoSansGujarati,
            ),
            Text(
              " S-36",
              style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUpload() {
    return CustomElevatedButton(
      height: 44.v,
      text: "lbl_upload".tr,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
      onPressed: () {
        Get.bottomSheet(
          Container(
            height: 150.h,
            padding: EdgeInsets.all(20.h),
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.v),
                topRight: Radius.circular(20.v),
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Choose Option',
                  style: TextStyle(
                    color: appTheme.pink900,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.captureImageFromCamera();
                        Get.back();
                      },
                      icon: Icon(
                        Icons.camera,
                        size: 40.0,
                        color: appTheme.orangeA400,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.pickImageFromGallery();
                        Get.back();
                      },
                      icon: Icon(
                        Icons.image,
                        size: 40.0,
                        color: appTheme.orangeA400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhotoUploadSection() {
    return Obx(
      () => Container(
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
          children: [
            Text(
              "msg_coordinator_photo".tr,
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 4.v),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.zero,
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: controller.isEdit.value
                  ? CustomImageView(
                      imagePath: controller.selectedImagePath.value,
                      height: 200.adaptSize,
                      width: 110.adaptSize,
                      imageHeight: 300.adaptSize,
                      imageWidth: 110.adaptSize,
                      fit: BoxFit.cover,
                    )
                  : CustomImageView(
                      imagePath:
                          "https://content3.jdmagicbox.com/comp/gandhinagar-gujarat/l7/9999pxx79.xx79.200318221805.i6l7/catalogue/anayas-yoga-center-randesan-gandhinagar-gujarat-yoga-centres-1jq7l9iw5s.jpg",
                      height: 200.adaptSize,
                      width: 110.adaptSize,
                      imageHeight: 300.adaptSize,
                      imageWidth: 110.adaptSize,
                      fit: BoxFit.cover,
                    ),
            ),
            SizedBox(height: 4.v),
            controller.isEdit.value ? _buildUpload() : SizedBox.shrink(),
            SizedBox(height: 10.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNextButton() {
    return Obx(
      () => CustomElevatedButton(
        height: 50.v,
        text: controller.isEdit.value ? "lbl_next".tr : "lbl_edit".tr,
        buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
        onPressed: () {
          controller.isEdit.value
              ? Get.offAllNamed(AppRoutes.homeScreenContainerScreen)
              : controller.isEdit.value = true;
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [createAccountFormTwoModelObj] object of the current [rahulbhaiTwo] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapDOBSelection() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate:
            controller.createAccountFormTwoModelObj.value.currentDate!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.createAccountFormTwoModelObj.value.currentDate!.value =
          dateTime;
      controller.createAccountFormTwoModelObj.value.dob.value =
          dateTime.format(pattern: dateTimeFormatPattern);
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [createAccountFormTwoModelObj] object of the current [date] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapRowdate() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate:
            controller.createAccountFormTwoModelObj.value.selectedDate!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.createAccountFormTwoModelObj.value.selectedDate!.value =
          dateTime;
      controller.createAccountFormTwoModelObj.value.date.value =
          dateTime.format(pattern: SHORT_DATE_WITH_FULL_YEAR);
    }
  }
}
