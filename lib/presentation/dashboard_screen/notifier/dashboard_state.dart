part of 'dashboard_notifier.dart';

/// Represents the state of Dashboard in the application.

// ignore_for_file: must_be_immutable
class DashboardState extends Equatable {
  DashboardState(
      {this.searchController,
      this.dashboardnewTabModelObj,
      this.dashboardInitialModelObj,
      this.dashboardModelObj});

  TextEditingController? searchController;

  DashboardModel? dashboardModelObj;

  DashboardnewTabModel? dashboardnewTabModelObj;

  DashboardInitialModel? dashboardInitialModelObj;

  @override
  List<Object?> get props => [
        searchController,
        dashboardnewTabModelObj,
        dashboardInitialModelObj,
        dashboardModelObj
      ];
  DashboardState copyWith({
    TextEditingController? searchController,
    DashboardnewTabModel? dashboardnewTabModelObj,
    DashboardInitialModel? dashboardInitialModelObj,
    DashboardModel? dashboardModelObj,
  }) {
    return DashboardState(
      searchController: searchController ?? this.searchController,
      dashboardnewTabModelObj:
          dashboardnewTabModelObj ?? this.dashboardnewTabModelObj,
      dashboardInitialModelObj:
          dashboardInitialModelObj ?? this.dashboardInitialModelObj,
      dashboardModelObj: dashboardModelObj ?? this.dashboardModelObj,
    );
  }
}
