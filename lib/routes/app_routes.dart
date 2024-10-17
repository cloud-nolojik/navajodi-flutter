import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/dashboard_screen/dashboard_screen.dart';
import '../presentation/filter_screen/filter_screen.dart';
import '../presentation/profiledetails_screen/profiledetails_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/search_screen/search_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String dashboardInitialPage = '/dashboard_initial_page';

  static const String dashboardnewTabPage = '/dashboardnew_tab_page';

  static const String profiledetailsScreen = '/profiledetails_screen';

  static const String scrollviewOneTabPage = '/scrollview_one_tab_page';

  static const String searchScreen = '/search_screen';

  static const String filterScreen = '/filter_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    registerScreen: (context) => RegisterScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    profiledetailsScreen: (context) => ProfiledetailsScreen(),
    searchScreen: (context) => SearchScreen(),
    filterScreen: (context) => FilterScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => RegisterScreen()
  };
}
