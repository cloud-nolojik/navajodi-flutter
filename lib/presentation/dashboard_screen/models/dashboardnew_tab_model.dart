import 'package:equatable/equatable.dart';
import 'nearbylist_item_model.dart';
import 'userlist_item_model.dart';

/// This class is used in the [dashboardnew_tab_page] screen.

// ignore_for_file: must_be_immutable
class DashboardnewTabModel extends Equatable {
  DashboardnewTabModel(
      {this.userlistItemList = const [], this.nearbylistItemList = const []});

  List<UserlistItemModel> userlistItemList;

  List<NearbylistItemModel> nearbylistItemList;

  DashboardnewTabModel copyWith({
    List<UserlistItemModel>? userlistItemList,
    List<NearbylistItemModel>? nearbylistItemList,
  }) {
    return DashboardnewTabModel(
      userlistItemList: userlistItemList ?? this.userlistItemList,
      nearbylistItemList: nearbylistItemList ?? this.nearbylistItemList,
    );
  }

  @override
  List<Object?> get props => [userlistItemList, nearbylistItemList];
}
