import '../../../core/app_export.dart';

/// This class is used in the [userlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class UserlistItemModel {
  UserlistItemModel(
      {this.saraWone, this.saraWthree, this.saraWfive, this.saraw, this.id}) {
    saraWone = saraWone ?? ImageConstant.imgUnsplashY9hsmx3Muy;
    saraWthree = saraWthree ?? ImageConstant.imgContrast;
    saraWfive = saraWfive ?? ImageConstant.imgClose;
    saraw = saraw ?? "Sara W.";
    id = id ?? "";
  }

  String? saraWone;

  String? saraWthree;

  String? saraWfive;

  String? saraw;

  String? id;
}
