import 'package:equatable/equatable.dart';

/// This class is used in the [scrollview_one_tab_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewOneTabModel extends Equatable {
  ScrollviewOneTabModel(
      {this.selectedBirthDetails, this.birthDetails = "\"\""}) {
    selectedBirthDetails = selectedBirthDetails ?? DateTime.now();
  }

  DateTime? selectedBirthDetails;

  String birthDetails;

  ScrollviewOneTabModel copyWith({
    DateTime? selectedBirthDetails,
    String? birthDetails,
  }) {
    return ScrollviewOneTabModel(
      selectedBirthDetails: selectedBirthDetails ?? this.selectedBirthDetails,
      birthDetails: birthDetails ?? this.birthDetails,
    );
  }

  @override
  List<Object?> get props => [selectedBirthDetails, birthDetails];
}
