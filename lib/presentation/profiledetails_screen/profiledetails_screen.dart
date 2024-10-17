import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'notifier/profiledetails_notifier.dart';
import 'scrollview_one_tab_page.dart';

class ProfiledetailsScreen extends ConsumerStatefulWidget {
  const ProfiledetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfiledetailsScreenState createState() => ProfiledetailsScreenState();
}

// ignore_for_file: must_be_immutable
class ProfiledetailsScreenState extends ConsumerState<ProfiledetailsScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Container(
                      child: Column(
                        children: [_buildProfileOverview(context)],
                      ),
                    ),
                  )
                ];
              },
              body: Container(
                child: SizedBox(
                  height: 2162.h,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ScrollviewOneTabPage(),
                      ScrollviewOneTabPage(),
                      ScrollviewOneTabPage()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileOverview(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          leadingWidth: 75.h,
          leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFrameWhiteA7000144x44,
            margin: EdgeInsets.only(
              left: 31.h,
              top: 6.h,
              bottom: 6.h,
            ),
          ),
        ),
        SizedBox(height: 134.h),
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20,
                      sigmaY: 20,
                    ),
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(
                        left: 12.h,
                        top: 10.h,
                        bottom: 10.h,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA70001.withOpacity(0.65),
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_tamanna_bhatia".tr,
                            style: CustomTextStyles.titleMediumBlack900Bold,
                          ),
                          Text(
                            "lbl_banglore".tr,
                            style: CustomTextStyles.titleMediumBlack900,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 44.h),
              Container(
                decoration: BoxDecoration(
                  color: appTheme.whiteA70001,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.whiteA70001,
                    labelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelColor: appTheme.gray800B2,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.all(
                      5.0.h,
                    ),
                    indicator: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.gray8001e,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            7,
                          ),
                        )
                      ],
                    ),
                    dividerHeight: 0.0,
                    tabs: [
                      Tab(
                        height: 38,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Text(
                            "lbl_about".tr,
                          ),
                        ),
                      ),
                      Tab(
                        height: 38,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Text(
                            "lbl_family".tr,
                          ),
                        ),
                      ),
                      Tab(
                        height: 38,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Text(
                            "lbl_looking_for".tr,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildSchoolDetails(
    BuildContext context, {
    required String laxmibaividhya,
    required String cbseOne,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          laxmibaividhya,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          cbseOne,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray80001.withOpacity(0.73),
          ),
        )
      ],
    );
  }
}
