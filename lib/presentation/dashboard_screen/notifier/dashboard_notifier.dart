import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/dashboard_initial_model.dart';
import '../models/dashboard_model.dart';
import '../models/dashboardnew_tab_model.dart';
import '../models/nearbylist_item_model.dart';
import '../models/userlist_item_model.dart';
part 'dashboard_state.dart';

final dashboardNotifier =
    StateNotifierProvider.autoDispose<DashboardNotifier, DashboardState>(
  (ref) => DashboardNotifier(DashboardState(
    searchController: TextEditingController(),
    dashboardnewTabModelObj: DashboardnewTabModel(userlistItemList: [
      UserlistItemModel(
          saraWone: ImageConstant.imgUnsplashY9hsmx3Muy,
          saraWthree: ImageConstant.imgContrast,
          saraWfive: ImageConstant.imgClose,
          saraw: "Sara W."),
      UserlistItemModel(saraw: "Sophia P."),
      UserlistItemModel(saraw: "Faye N."),
      UserlistItemModel(saraw: "James F."),
      UserlistItemModel(saraw: "James F.")
    ], nearbylistItemList: [
      NearbylistItemModel(
          bangloreOne: ImageConstant.imgRectangle4626,
          tamannaCounter: "Tamanna, 25",
          yourprofile: "Your Profile matches 80%",
          bangloreFour: "Banglore"),
      NearbylistItemModel(
          bangloreOne: ImageConstant.imgRectangle4641,
          tamannaCounter: "Tamanna, 25",
          yourprofile: "Your Profile matches 80%",
          bangloreFour: "Banglore")
    ]),
    dashboardInitialModelObj: DashboardInitialModel(),
  )),
);

/// A notifier that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardNotifier extends StateNotifier<DashboardState> {
  DashboardNotifier(DashboardState state) : super(state);
}
