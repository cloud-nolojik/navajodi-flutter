import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'models/chipviewframe30_item_model.dart';
import 'models/search_seven_item_model.dart';
import 'notifier/search_notifier.dart';
import 'widgets/chipviewframe30_item_widget.dart';
import 'widgets/search_seven_item_widget.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchScreenState createState() => SearchScreenState();
}

// ignore_for_file: must_be_immutable
class SearchScreenState extends ConsumerState<SearchScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 16.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchSection(context),
              SizedBox(height: 24.h),
              _buildBestMatchSection(context)
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_search".tr,
        margin: EdgeInsets.only(left: 17.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUnsplashYzrott2l1xi36x36,
          margin: EdgeInsets.only(
            top: 9.h,
            right: 25.h,
            bottom: 10.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            children: [
              Consumer(
                builder: (context, ref, _) {
                  return CustomSearchView(
                    controller: ref.watch(searchNotifier).searchsixController,
                    hintText: "msg_what_are_you_looking".tr,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 16.h,
                    ),
                  );
                },
              ),
              SizedBox(height: 26.h),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "msg_recently_searched".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "lbl_clear_all".tr,
                            style: CustomTextStyles.titleSmallGray70003,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Consumer(
                        builder: (context, ref, _) {
                          return Wrap(
                            runSpacing: 15.h,
                            spacing: 15.h,
                            children: List<Widget>.generate(
                              ref
                                      .watch(searchNotifier)
                                      .searchModelObj
                                      ?.chipviewframe30ItemList
                                      .length ??
                                  0,
                              (index) {
                                Chipviewframe30ItemModel model = ref
                                        .watch(searchNotifier)
                                        .searchModelObj
                                        ?.chipviewframe30ItemList[index] ??
                                    Chipviewframe30ItemModel();
                                return Chipviewframe30ItemWidget(
                                  model,
                                  onSelectedChipView: (value) {
                                    ref
                                        .read(searchNotifier.notifier)
                                        .onSelectedChipView(index, value);
                                  },
                                );
                              },
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBestMatchSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.h),
                        child: Text(
                          "lbl_best_match".tr,
                          style: CustomTextStyles.titleMediumBlack900_1,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(right: 18.h),
                          child: Text(
                            "lbl_see_all".tr,
                            style: CustomTextStyles.titleSmallBluegray60001,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            child: Consumer(
              builder: (context, ref, _) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 14.h,
                    children: List.generate(
                      ref
                              .watch(searchNotifier)
                              .searchModelObj
                              ?.searchSevenItemList
                              .length ??
                          0,
                      (index) {
                        SearchSevenItemModel model = ref
                                .watch(searchNotifier)
                                .searchModelObj
                                ?.searchSevenItemList[index] ??
                            SearchSevenItemModel();
                        return SearchSevenItemWidget(
                          model,
                          onTapImgTamnnatwentynin: () {
                            onTapImgTamnnatwentynin(context);
                          },
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardInitialPage;
      default:
        return "/";
    }
  }

  /// Navigates to the profiledetailsScreen when the action is triggered.
  onTapImgTamnnatwentynin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profiledetailsScreen,
    );
  }
}
