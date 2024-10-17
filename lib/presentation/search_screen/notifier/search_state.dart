part of 'search_notifier.dart';

/// Represents the state of Search in the application.

// ignore_for_file: must_be_immutable
class SearchState extends Equatable {
  SearchState({this.searchsixController, this.searchModelObj});

  TextEditingController? searchsixController;

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [searchsixController, searchModelObj];
  SearchState copyWith({
    TextEditingController? searchsixController,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      searchsixController: searchsixController ?? this.searchsixController,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}
