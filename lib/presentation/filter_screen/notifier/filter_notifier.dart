import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/filter_model.dart';
part 'filter_state.dart';

final filterNotifier =
    StateNotifierProvider.autoDispose<FilterNotifier, FilterState>(
  (ref) => FilterNotifier(FilterState(
    selectedDropDownValue: SelectionPopupModel(title: ''),
    selectedDropDownValue1: SelectionPopupModel(title: ''),
    selectedDropDownValue2: SelectionPopupModel(title: ''),
    selectedDropDownValue3: SelectionPopupModel(title: ''),
    selectedDropDownValue4: SelectionPopupModel(title: ''),
    selectedDropDownValue5: SelectionPopupModel(title: ''),
    selectedDropDownValue6: SelectionPopupModel(title: ''),
    isSelectedSwitch: false,
    isSelectedSwitch1: false,
    isSelectedSwitch2: false,
    filterModelObj: FilterModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList1: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList2: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList3: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList4: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList5: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList6: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a Filter according to the event that is dispatched to it.
class FilterNotifier extends StateNotifier<FilterState> {
  FilterNotifier(FilterState state) : super(state);

  void changeSwitchBox(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch1: value);
  }

  void changeSwitchBox2(bool value) {
    state = state.copyWith(isSelectedSwitch2: value);
  }
}
