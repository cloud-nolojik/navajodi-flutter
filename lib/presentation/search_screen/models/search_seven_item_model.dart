import '../../../core/app_export.dart';

/// This class is used in the [search_seven_item_widget] screen.

// ignore_for_file: must_be_immutable
class SearchSevenItemModel {
  SearchSevenItemModel(
      {this.tamnnatwentynin, this.tamnnaCounter, this.hydrabad, this.id}) {
    tamnnatwentynin = tamnnatwentynin ?? ImageConstant.imgRectangle4626190x220;
    tamnnaCounter = tamnnaCounter ?? "Tamnna, 29";
    hydrabad = hydrabad ?? "Hydrabad";
    id = id ?? "";
  }

  String? tamnnatwentynin;

  String? tamnnaCounter;

  String? hydrabad;

  String? id;
}
