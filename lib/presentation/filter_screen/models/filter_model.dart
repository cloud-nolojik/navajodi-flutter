import 'package:equatable/equatable.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class FilterModel extends Equatable {
  FilterModel(
      {this.dropdownItemList = const [],
      this.dropdownItemList1 = const [],
      this.dropdownItemList2 = const [],
      this.dropdownItemList3 = const [],
      this.dropdownItemList4 = const [],
      this.dropdownItemList5 = const [],
      this.dropdownItemList6 = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  List<SelectionPopupModel> dropdownItemList2;

  List<SelectionPopupModel> dropdownItemList3;

  List<SelectionPopupModel> dropdownItemList4;

  List<SelectionPopupModel> dropdownItemList5;

  List<SelectionPopupModel> dropdownItemList6;

  FilterModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<SelectionPopupModel>? dropdownItemList2,
    List<SelectionPopupModel>? dropdownItemList3,
    List<SelectionPopupModel>? dropdownItemList4,
    List<SelectionPopupModel>? dropdownItemList5,
    List<SelectionPopupModel>? dropdownItemList6,
  }) {
    return FilterModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      dropdownItemList2: dropdownItemList2 ?? this.dropdownItemList2,
      dropdownItemList3: dropdownItemList3 ?? this.dropdownItemList3,
      dropdownItemList4: dropdownItemList4 ?? this.dropdownItemList4,
      dropdownItemList5: dropdownItemList5 ?? this.dropdownItemList5,
      dropdownItemList6: dropdownItemList6 ?? this.dropdownItemList6,
    );
  }

  @override
  List<Object?> get props => [
        dropdownItemList,
        dropdownItemList1,
        dropdownItemList2,
        dropdownItemList3,
        dropdownItemList4,
        dropdownItemList5,
        dropdownItemList6
      ];
}
