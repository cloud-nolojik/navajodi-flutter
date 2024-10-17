import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/chipviewframe30_item_model.dart';
import '../models/search_model.dart';
import '../models/search_seven_item_model.dart';
part 'search_state.dart';

final searchNotifier =
    StateNotifierProvider.autoDispose<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(SearchState(
    searchsixController: TextEditingController(),
    searchModelObj: SearchModel(chipviewframe30ItemList: [
      Chipviewframe30ItemModel(frame3015One: "Malyalam"),
      Chipviewframe30ItemModel(frame3015One: "Bussiness Woman"),
      Chipviewframe30ItemModel(frame3015One: "Goverment servent")
    ], searchSevenItemList: [
      SearchSevenItemModel(
          tamnnatwentynin: ImageConstant.imgRectangle4626190x220,
          tamnnaCounter: "Tamnna, 29",
          hydrabad: "Hydrabad"),
      SearchSevenItemModel(
          tamnnatwentynin: ImageConstant.imgRectangle4641190x220,
          tamnnaCounter: "Tamnna, 29",
          hydrabad: "Hydrabad")
    ]),
  )),
);

/// A notifier that manages the state of a Search according to the event that is dispatched to it.
class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(SearchState state) : super(state);

  void onSelectedChipView(
    int index,
    bool value,
  ) {
    List<Chipviewframe30ItemModel> newList =
        List<Chipviewframe30ItemModel>.from(
            state.searchModelObj!.chipviewframe30ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        searchModelObj:
            state.searchModelObj?.copyWith(chipviewframe30ItemList: newList));
  }
}
