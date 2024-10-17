import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewframe30_item_widget] screen.

// ignore_for_file: must_be_immutable
class Chipviewframe30ItemModel extends Equatable {
  Chipviewframe30ItemModel({this.frame3015One, this.isSelected}) {
    frame3015One = frame3015One ?? "Malyalam";
    isSelected = isSelected ?? false;
  }

  String? frame3015One;

  bool? isSelected;

  Chipviewframe30ItemModel copyWith({
    String? frame3015One,
    bool? isSelected,
  }) {
    return Chipviewframe30ItemModel(
      frame3015One: frame3015One ?? this.frame3015One,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [frame3015One, isSelected];
}
