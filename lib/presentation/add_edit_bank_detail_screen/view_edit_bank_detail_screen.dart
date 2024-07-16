import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_edit_bank_detail_controller.dart';

class ViewEditBankDetailsScreen
    extends GetWidget<AddEditBankDetailsController> {
  ViewEditBankDetailsScreen({Key? key}) : super(key: key);

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
                child: Obx(
                  () => controller.isEditable.value
                      ? Column(
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
                        )
                      : Column(
                          children: [
                            _buildViewNameAsPerPassbookField(),
                            SizedBox(height: 12.v),
                            _buildViewBankNameField(),
                            SizedBox(height: 12.v),
                            _buildViewBankAccountNoField(),
                            SizedBox(height: 12.v),
                            _buildViewBankIFSCodeField(),
                            SizedBox(height: 12.v),
                            _buildViewBranchNameField(),
                            SizedBox(height: 12.v),
                          ],
                        ),
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

  Widget _buildViewNameAsPerPassbookField() {
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
            "name_as_per_passbook".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            "Yash",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
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

  Widget _buildViewBankNameField() {
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
            "bank_name".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            "BOB",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
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

  Widget _buildViewBankAccountNoField() {
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
            "bank_account_no".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            "111111111111",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
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

  Widget _buildViewBankIFSCodeField() {
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
            "ifscode".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            "UCBA00000991",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
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

  Widget _buildViewBranchNameField() {
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
            "branch_name".tr,
            style: CustomTextStyles.bodyLargeNotoSansGujarati,
          ),
          SizedBox(
            width: 6.v,
          ),
          Text(
            "Dehgam",
            style: CustomTextStyles.bodyLargeNotoSansGujaratiBold,
          ),
        ],
      ),
    );
  }

  /// Save Button Section Widget
  Widget _buildSaveButton() {
    return Obx(
      () => CustomElevatedButton(
        text: controller.isEditable.value ? "change".tr : "lbl_edit".tr,
        margin: EdgeInsets.only(right: 2.h),
        buttonTextStyle: CustomTextStyles.bodyLargeBaloo2OnPrimaryContainer18,
        onPressed: () {
          if (controller.isEditable.value) {
            controller.showSBankDetailsUpdateCompleteDialogue();
            Debouncer(delay: Duration(seconds: 1)).call(() {
              controller.isEditable.value = false;
            });
          } else if (!controller.isEditable.value) {
            controller.isEditable.value = true;
          }
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowleftone() {
    Get.back();
  }
}
