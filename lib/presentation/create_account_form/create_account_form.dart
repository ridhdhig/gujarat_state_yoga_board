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
import 'controller/create_account_form_two_controller.dart';
// ignore_for_file: must_be_immutable

class CreateAccountForm extends GetWidget<CreateAccountFormTwoController> {
  CreateAccountForm({Key? key})
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
                      SizedBox(height: 12.v),
                      _buildPhotoUploadSection(),
                      SizedBox(height: 12.v),
                      _buildSignaturePad(),
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
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_create_account".tr,
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
            child: Obx(
              () => CustomImageView(
                imagePath: controller.selectedImagePath.value,
                height: 200.adaptSize,
                width: 110.adaptSize,
                imageHeight: 300.adaptSize,
                imageWidth: 110.adaptSize,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          _buildUpload(),
          SizedBox(height: 10.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
      height: 50.v,
      text: "lbl_next".tr,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
      onPressed: () {
        Get.offAllNamed(
          AppRoutes.addBankDetail,
        );
      },
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
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
            (controller.imagePath.value == null)
                ? _buildSignatureUploadButton()
                : SizedBox.shrink(),
            SizedBox(height: 2.v)
          ],
        ),
      ),
    );
  }

  Widget _buildSignatureUploadButton() {
    return CustomElevatedButton(
      onPressed: () => controller.openSignaturePad(),
      height: 44.v,
      text: "lbl_upload".tr,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
    );
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
