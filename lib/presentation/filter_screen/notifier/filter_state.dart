part of 'filter_notifier.dart';

/// Represents the state of Filter in the application.

// ignore_for_file: must_be_immutable
class FilterState extends Equatable {
  FilterState(
      {this.selectedDropDownValue,
      this.selectedDropDownValue1,
      this.selectedDropDownValue2,
      this.selectedDropDownValue3,
      this.selectedDropDownValue4,
      this.selectedDropDownValue5,
      this.selectedDropDownValue6,
      this.isSelectedSwitch = false,
      this.isSelectedSwitch1 = false,
      this.isSelectedSwitch2 = false,
      this.filterModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  SelectionPopupModel? selectedDropDownValue5;

  SelectionPopupModel? selectedDropDownValue6;

  FilterModel? filterModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        selectedDropDownValue4,
        selectedDropDownValue5,
        selectedDropDownValue6,
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        filterModelObj
      ];
  FilterState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    SelectionPopupModel? selectedDropDownValue4,
    SelectionPopupModel? selectedDropDownValue5,
    SelectionPopupModel? selectedDropDownValue6,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      selectedDropDownValue4:
          selectedDropDownValue4 ?? this.selectedDropDownValue4,
      selectedDropDownValue5:
          selectedDropDownValue5 ?? this.selectedDropDownValue5,
      selectedDropDownValue6:
          selectedDropDownValue6 ?? this.selectedDropDownValue6,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
