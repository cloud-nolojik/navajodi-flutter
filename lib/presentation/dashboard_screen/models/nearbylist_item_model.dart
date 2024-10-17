import '../../../core/app_export.dart';

/// This class is used in the [nearbylist_item_widget] screen.

// ignore_for_file: must_be_immutable
class NearbylistItemModel {
  NearbylistItemModel(
      {this.bangloreOne,
      this.tamannaCounter,
      this.yourprofile,
      this.bangloreFour,
      this.id}) {
    bangloreOne = bangloreOne ?? ImageConstant.imgRectangle4626;
    tamannaCounter = tamannaCounter ?? "Tamanna, 25";
    yourprofile = yourprofile ?? "Your Profile matches 80%";
    bangloreFour = bangloreFour ?? "Banglore";
    id = id ?? "";
  }

  String? bangloreOne;

  String? tamannaCounter;

  String? yourprofile;

  String? bangloreFour;

  String? id;
}
