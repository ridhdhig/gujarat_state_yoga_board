import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_radio_button.dart';
import '../../core/app_export.dart';
import '../../core/enums/launguage.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/date_time_utils.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../settings_screen/settings_screen.dart';
import 'controller/home_screen_controller.dart'; // ignore_for_file: must_be_immutable

class HomeScreenContainerScreen
    extends GetWidget<HomeScreenContainerController> {
  const HomeScreenContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: theme.colorScheme.onPrimaryContainer,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Container(
              child: CustomImageView(
                imagePath: ImageConstant.drawerImage,
                imageHeight: 20.h,
                imageWidth: 20.h,
                fit: BoxFit.contain,
              ),
            ),
          );
        }),
        title: Obx(
          () => Text(
            controller.selectedIndex.value == 0
                ? "lbl_home".tr
                : controller.selectedIndex.value == 1
                    ? "lbl_daily_reporting".tr
                    : controller.selectedIndex.value == 2
                        ? "lbl_settings".tr
                        : "",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: true,
      ),
      drawer: _buildCustomDrawer(),
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            _buildBodyItems(),
            _buildDailyReporting(),
            SettingsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: _buildBottomNavigation(),
      ),
    );
  }

  Drawer _buildCustomDrawer() {
    return Drawer(
      backgroundColor: appTheme.drawerBg,
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.v,
          right: 12.v,
          top: 35.h,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            _buildDraweProfileContainer(),
            SizedBox(
              height: 20.h,
            ),
            _buildLanguageSelectionContainer(),
            SizedBox(
              height: 24.h,
            ),
            _buildMenuItemsContainer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomImageView(
                imageWidth: double.infinity,
                imagePath: ImageConstant.drawerBottomImage,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItemsContainer() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_menu".tr,
            style: TextStyle(
              color: appTheme.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          buildDrawerMenuContainer(
            "lbl_home".tr,
            ImageConstant.homeImage,
            () {
              controller.selectedIndex.value = 0;
              Get.back();
              // Do Action for navigation
            },
          ),
          SizedBox(
            height: 12.h,
          ),
          buildDrawerMenuContainer(
            "lbl_my_profile".tr,
            ImageConstant.profileIcon,
            () {
              Get.back();
              Get.toNamed(
                AppRoutes.myProfile,
              );
              // Do Action for navigation
            },
          ),
          SizedBox(
            height: 12.h,
          ),
          buildDrawerMenuContainer(
            "lbl_change_password".tr,
            ImageConstant.lockImage,
            () {
              Get.back();
              Get.toNamed(
                AppRoutes.myProfile,
              );
              // Do Action for navigation
            },
          ),
          SizedBox(
            height: 12.h,
          ),
          buildDrawerMenuContainer(
            "signature".tr,
            ImageConstant.imgSignature,
            () {
              Get.back();
              Get.toNamed(
                AppRoutes.updateSignature,
                arguments: {AppStrings.isFromCreateAccount: false},
              );
              // Do Action for navigation
            },
          ),
          SizedBox(
            height: 12.h,
          ),
          buildDrawerMenuContainer(
            "bank_details".tr,
            ImageConstant.imgBank,
            () {
              Get.back();
              Get.toNamed(
                AppRoutes.editBankDetail,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildDrawerMenuContainer(
      String text, String imagePath, Function onTap) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 48.h,
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: appTheme.orange10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: imagePath,
            ),
            SizedBox(
              width: 6.h,
            ),
            Text(
              text,
              style: TextStyle(
                color: appTheme.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageSelectionContainer() {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: controller.isExpanded.value ? 126.h : 48.h,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: appTheme.orange10,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  controller.isExpanded.value = !controller.isExpanded.value;
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Language:',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: appTheme.black,
                          ),
                        ),
                        SizedBox(
                          width: 6.v,
                        ),
                        Text(
                          '${controller.selectedLanguage}',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: appTheme.black,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          controller.isExpanded.value =
                              !controller.isExpanded.value;
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 7.h),
                          child: CustomImageView(
                            imagePath: controller.isExpanded.value
                                ? ImageConstant.arrowUpImage
                                : ImageConstant.arrowDownImage,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                children: [
                  CustomRadioButton<Language>(
                    onChange: (value) {
                      controller.settingContainerLanguage.value = value;
                    },
                    groupValue: controller.settingContainerLanguage.value,
                    text: 'lbl_english'.tr,
                    value: Language.english,
                  ),
                  CustomRadioButton<Language>(
                    onChange: (value) {
                      controller.settingContainerLanguage.value = value;
                    },
                    text: 'lbl_gujarati'.tr,
                    groupValue: controller.settingContainerLanguage.value,
                    value: Language.gujarati,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDraweProfileContainer() {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.profileImage),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(2.17),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.profilePersonImage,
            imageHeight: 42.h,
            imageWidth: 53.v,
          ),
          SizedBox(
            width: 15.v,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gandhinagar',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  color: appTheme.black,
                ),
              ),
              Text(
                'Rahul Chudashma',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  color: appTheme.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        // Get.toNamed(getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Setting:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      default:
        return DefaultWidget();
    }
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

  Widget _buildBodyItems() {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: ListView(
        children: [
          _buildProfileContainer(),
          SizedBox(
            height: 12.h,
          ),
          _buildReportingCard(
            ImageConstant.dailyReportingBgImage,
            'lbl_daily_reporting'.tr,
            ImageConstant.piaChartImage,
            () {
              controller.selectedIndex.value = 1;
            },
          ),
          SizedBox(
            height: 12.h,
          ),
          _buildReportingCard(
            ImageConstant.monthlyReportingBgImage,
            'msg_monthly_reporting'.tr,
            ImageConstant.calendarImage,
            () {
              Get.toNamed(AppRoutes.listMonthlyBill);
            },
          ),
          SizedBox(
            height: 12.h,
          ),
          _buildReportingCard(
            ImageConstant.t_a_billBgImage,
            'lbl_t_a_bill'.tr,
            ImageConstant.tracedImage,
            () {
              Get.toNamed(AppRoutes.tABillList);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProfileContainer() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.myProfile);
      },
      child: Container(
        height: 124.h,
        child: Column(
          children: [
            Container(
              height: 44.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6.v),
                  topRight: Radius.circular(6.v),
                ),
                color: appTheme.pink900,
              ),
              alignment: Alignment.center,
              child: Text(
                'lbl_profile'.tr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6.v),
                  bottomRight: Radius.circular(6.v),
                ),
                image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.profileBgImage,
                    ),
                    fit: BoxFit.fill),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 11.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'lbl_gandhinagar'.tr,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: appTheme.black,
                          ),
                        ),
                        Text(
                          'msg_rahulbhai_chudashma'.tr,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: appTheme.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 59.h,
                    width: 75.v,
                    margin: EdgeInsets.only(right: 11.v),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(3),
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.profilePersonImage,
                        ),
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.profilePersonImage,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReportingCard(
      String bgImage, String title, String imagePath, Function onTap) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 141.h,
        width: 343.v,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.only(left: 12.v, right: 37.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: appTheme.orange10,
              ),
            ),
            CustomImageView(
              imagePath: imagePath,
              imageHeight: 60.h,
              imageWidth: 60.v,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDailyReporting() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDatePickerWidget(),
          _buildTourList(),
          SizedBox(
            height: 12.h,
          ),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildDatePickerWidget() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () => onTapDOBSelection(),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 8.v,
          ),
          decoration: UnderlineTabIndicator(
              borderSide: BorderSide(
            color: appTheme.lime400,
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Text(
                  "Date: ${DateFormat(dateTimeFormatPattern).format(controller.selectdate.value.selectedDate!.value)}",
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
                AppRoutes.editCoordinatorToursPerViewScreen,
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

  Widget _buildButton() {
    return CustomElevatedButton(
      height: 50.v,
      text: "lbl_add_daily_reporting".tr,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
      onPressed: () {
        Get.toNamed(
          AppRoutes.addCoordinatorToursPerViewScreen,
          arguments: {
            AppStrings.dailyReportSelectedDate:
                DateFormat(dateTimeFormatPattern)
                    .format(controller.selectdate.value.selectedDate!.value),
          },
        );
      },
    );
  }
}
