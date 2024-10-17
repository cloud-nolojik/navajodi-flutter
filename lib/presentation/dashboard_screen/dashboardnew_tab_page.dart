import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'models/dashboardnew_tab_model.dart';
import 'models/nearbylist_item_model.dart';
import 'models/userlist_item_model.dart';
import 'notifier/dashboard_notifier.dart';
import 'widgets/nearbylist_item_widget.dart';
import 'widgets/userlist_item_widget.dart';

class DashboardnewTabPage extends ConsumerStatefulWidget {
  const DashboardnewTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  DashboardnewTabPageState createState() => DashboardnewTabPageState();
}

class DashboardnewTabPageState extends ConsumerState<DashboardnewTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.h),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildWelcomeSection(context),
                    SizedBox(height: 20.h),
                    _buildUserList(context),
                    SizedBox(height: 20.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(right: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_near_you".tr,
                            style: CustomTextStyles.titleMediumOnPrimary,
                          ),
                          SizedBox(height: 16.h),
                          _buildNearbyList(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 16.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_welcome_to_wedin".tr,
                  style: CustomTextStyles.bodyMediumMontserratOnError,
                ),
                Text(
                  "lbl_justin_bieber".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 14.h),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomSearchView(
                      controller: ref.watch(dashboardNotifier).searchController,
                      hintText: "msg_what_are_you_looking".tr,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 16.h,
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserList(BuildContext context) {
    return Container(
      child: Consumer(
        builder: (context, ref, _) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 24.h,
              children: List.generate(
                ref
                        .watch(dashboardNotifier)
                        .dashboardnewTabModelObj
                        ?.userlistItemList
                        .length ??
                    0,
                (index) {
                  UserlistItemModel model = ref
                          .watch(dashboardNotifier)
                          .dashboardnewTabModelObj
                          ?.userlistItemList[index] ??
                      UserlistItemModel();
                  return UserlistItemWidget(
                    model,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNearbyList(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10.h,
            );
          },
          itemCount: ref
                  .watch(dashboardNotifier)
                  .dashboardnewTabModelObj
                  ?.nearbylistItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            NearbylistItemModel model = ref
                    .watch(dashboardNotifier)
                    .dashboardnewTabModelObj
                    ?.nearbylistItemList[index] ??
                NearbylistItemModel();
            return NearbylistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
