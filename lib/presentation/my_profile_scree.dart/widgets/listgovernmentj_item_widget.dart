import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/my_profile_controller.dart';
import '../models/listgovernmentj_item_model.dart';

// ignore: must_be_immutable
class ListgovernmentjItemWidget extends StatelessWidget {
  ListgovernmentjItemWidget(this.listgovernmentjItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListgovernmentjItemModel listgovernmentjItemModelObj;

  var controller = Get.find<MyProfileController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgContrast,
          height: 20.adaptSize,
          width: 20.adaptSize,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        SizedBox(width: 6.h),
        Obx(
          () => Text(
            listgovernmentjItemModelObj.governmentJobTe!.value,
            style: CustomTextStyles.titleMediumBluegray900,
          ),
        )
      ],
    );
  }
}
