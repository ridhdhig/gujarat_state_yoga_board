import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/home_screen/controller/home_screen_controller.dart';

enum BottomBarEnum { Home, Add, Setting }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends GetWidget<HomeScreenContainerController> {
  CustomBottomBar({Key? key, this.onChanged})
      : super(
          key: key,
        );

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAdd,
      activeIcon: ImageConstant.imgNavAdd,
      title: "lbl_add".tr,
      type: BottomBarEnum.Add,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSetting,
      activeIcon: ImageConstant.imgNavSetting,
      title: "lbl_settings".tr,
      type: BottomBarEnum.Setting,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.v,
      decoration: BoxDecoration(
        color: appTheme.orangeA100,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: SizedBox(
                width: 110.h,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 24.adaptSize,
                      width: double.maxFinite,
                      color: appTheme.gray600,
                      alignment: Alignment.centerRight,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.bodyMediumSoraGray600.copyWith(
                          color: appTheme.gray600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.pink900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: appTheme.pink900,
                      ),
                    ),
                  )
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            controller.selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
