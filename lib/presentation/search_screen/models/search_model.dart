import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chipviewframe30_item_model.dart';
import 'search_seven_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SearchModel extends Equatable {
  SearchModel(
      {this.chipviewframe30ItemList = const [],
      this.searchSevenItemList = const []});

  List<Chipviewframe30ItemModel> chipviewframe30ItemList;

  List<SearchSevenItemModel> searchSevenItemList;

  SearchModel copyWith({
    List<Chipviewframe30ItemModel>? chipviewframe30ItemList,
    List<SearchSevenItemModel>? searchSevenItemList,
  }) {
    return SearchModel(
      chipviewframe30ItemList:
          chipviewframe30ItemList ?? this.chipviewframe30ItemList,
      searchSevenItemList: searchSevenItemList ?? this.searchSevenItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewframe30ItemList, searchSevenItemList];
}
