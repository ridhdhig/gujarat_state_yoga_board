import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_edit_bank_detail_controller.dart';

class AddBankDetailsScreen extends GetWidget<AddEditBankDetailsController> {
  AddBankDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildHeader(),
      body: _buildBodyContent(),
    );
  }

  Widget _buildBodyContent() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildNameAsPerPassbookField(),
                    SizedBox(height: 12.v),
                    _buildBankNameField(),
                    SizedBox(height: 12.v),
                    _buildBankAccountNoField(),
                    SizedBox(height: 12.v),
                    _buildBankIFSCodeField(),
                    SizedBox(height: 12.v),
                    _buildBranchNameField(),
                    SizedBox(height: 12.v),
                  ],
                )),
          ),
          _buildSaveButton(),
          SizedBox(
            height: 30.h,
          ),
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
        "bank_details".tr,
        style: theme.textTheme.titleLarge,
      ),
      centerTitle: true,
    );
  }

  /// Common textEditingController Section Widget
  Widget _buildTextEditingWidget(
    TextEditingController textController,
    String hintText,
  ) {
    return CustomTextFormField(
      controller: textController,
      hintText: hintText,
      hintStyle: theme.textTheme.bodyLarge,
    );
  }

  /// Name As Per Passbook Section Widget
  Widget _buildNameAsPerPassbookField() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "name_as_per_passbook".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildTextEditingWidget(
            controller.nameAsPerPassbookController,
            'Yash',
          ),
        ],
      ),
    );
  }

  /// Bank Name Section Widget
  Widget _buildBankNameField() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "bank_name".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildTextEditingWidget(
            controller.bankNameController,
            'BOB',
          ),
        ],
      ),
    );
  }

  /// Bank Account Number Section Widget
  Widget _buildBankAccountNoField() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "bank_account_no".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildTextEditingWidget(
            controller.bankAccountNoController,
            '1111111111111',
          ),
        ],
      ),
    );
  }

  /// Bank IFSCode Section Widget
  Widget _buildBankIFSCodeField() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ifscode".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildTextEditingWidget(
            controller.bankIFSCodeController,
            'UCBA0000991',
          ),
        ],
      ),
    );
  }

  /// Branch Name Section Widget
  Widget _buildBranchNameField() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "branch_name".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          _buildTextEditingWidget(
            controller.breanchNameController,
            'Dehgam',
          ),
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
        Get.toNamed(AppRoutes.homeScreenContainerScreen);
      },
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowleftone() {
    Get.back();
  }
}
