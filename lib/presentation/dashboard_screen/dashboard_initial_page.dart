import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'dashboardnew_tab_page.dart';
import 'models/dashboard_initial_model.dart';
import 'notifier/dashboard_notifier.dart';

class DashboardInitialPage extends StatefulWidget {
  const DashboardInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  DashboardInitialPageState createState() => DashboardInitialPageState();
}

// ignore_for_file: must_be_immutable
class DashboardInitialPageState extends State<DashboardInitialPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA70001,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildAppBar(context),
          ),
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 14.h),
                  _buildTabview(context),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          DashboardnewTabPage(),
                          DashboardnewTabPage(),
                          DashboardnewTabPage(),
                          DashboardnewTabPage(),
                          DashboardnewTabPage(),
                          DashboardnewTabPage(),
                          DashboardnewTabPage(),
                          DashboardnewTabPage(),
                          DashboardnewTabPage()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 9, vsync: this);
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 61.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUnsplashYzrott2l1xi,
        height: 44.h,
        width: 44.h,
        margin: EdgeInsets.only(
          left: 17.h,
          top: 6.h,
          bottom: 6.h,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgMaskGroup,
        height: 30.h,
        width: 104.h,
      ),
      actions: [
        Container(
          height: 28.5.h,
          width: 31.670013.h,
          margin: EdgeInsets.only(right: 15.h),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSave,
                height: 22.h,
                width: 24.h,
                margin: EdgeInsets.only(right: 9.h),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 20.h,
                  height: 18.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 13.h),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                    border: Border.all(
                      color: appTheme.whiteA70001,
                      width: 1.6.h,
                    ),
                  ),
                  child: Text(
                    "lbl_3".tr,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      width: 374.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelColor: appTheme.blueGray80002,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray40001,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        indicatorColor: appTheme.blueGray80002,
        tabs: [
          Tab(
            child: Text(
              "lbl_new_people".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_suggested".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_near_by".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_online".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_photos_only".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_seen_you_visitors".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_you_seen_visitors".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_subcaste".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_caste".tr,
            ),
          )
        ],
      ),
    );
  }
}
