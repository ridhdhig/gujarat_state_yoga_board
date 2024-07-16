import '../../../core/app_export.dart';

/// This class is used in the [listgovernmentj_item_widget] screen.
class ListgovernmentjItemModel {
  ListgovernmentjItemModel({this.governmentJobTe, this.id}) {
    governmentJobTe = governmentJobTe ?? Rx("Government Job");
    id = id ?? Rx("");
  }

  Rx<String>? governmentJobTe;

  Rx<String>? id;
}
