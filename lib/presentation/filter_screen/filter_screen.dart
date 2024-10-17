import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_switch.dart';
import 'models/filter_model.dart';
import 'notifier/filter_notifier.dart';

class FilterScreen extends ConsumerStatefulWidget {
  const FilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FilterScreenState createState() => FilterScreenState();
}

class FilterScreenState extends ConsumerState<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 14.h),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_location".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_33_mayert_highway".tr,
                            style: CustomTextStyles.titleMediumGray60002,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        _buildAgeRangeSection(context),
                        SizedBox(height: 20.h),
                        _buildHeightSection(context),
                        SizedBox(height: 20.h),
                        _buildReligionMaritalStatusSection(context),
                        SizedBox(height: 20.h),
                        _buildSubcasteSection(context),
                        SizedBox(height: 2.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "lbl_4_more2".tr,
                            style: CustomTextStyles.titleSmallGray500,
                          ),
                        ),
                        SizedBox(height: 18.h),
                        _buildStateLanguageSection(context),
                        SizedBox(height: 20.h),
                        _buildEducationProfessionSection(context)
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                  SizedBox(height: 12.h),
                  _buildGlobalModeSection(context),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                  SizedBox(height: 14.h),
                  _buildShowMeWithProfileSection(context),
                  SizedBox(height: 14.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                  SizedBox(height: 12.h),
                  _buildShowMeOnlyWithProfileSection(context),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                  SizedBox(height: 34.h)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildApplyFilterSection(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgFramePrimarycontainer,
        height: 46.h,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 5.h,
          bottom: 5.h,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_filter".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUnsplashYzrott2l1xi36x36,
          margin: EdgeInsets.only(
            top: 9.h,
            right: 25.h,
            bottom: 11.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildAgeRangeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: appTheme.whiteA70001.withOpacity(0.3),
        borderRadius: BorderRadiusStyle.roundedBorder10,
        border: Border.all(
          color: appTheme.indigo10099,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              3,
              4,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_age_range".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_23_33".tr,
                  style: CustomTextStyles.titleSmallGray60002,
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            child: SliderTheme(
              data: SliderThemeData(
                trackShape: RoundedRectSliderTrackShape(),
                activeTrackColor: theme.colorScheme.secondaryContainer,
                inactiveTrackColor: appTheme.gray200,
                thumbColor: appTheme.whiteA70001,
                thumbShape: RoundSliderThumbShape(),
              ),
              child: RangeSlider(
                values: RangeValues(
                  0,
                  0,
                ),
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
              ),
            ),
          ),
          SizedBox(height: 4.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeightSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.whiteA70001.withOpacity(0.3),
        borderRadius: BorderRadiusStyle.roundedBorder10,
        border: Border.all(
          color: appTheme.indigo10099,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              3,
              4,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_highte".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_5_ft_to_6_ft".tr,
                  style: CustomTextStyles.titleSmallGray60002,
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: double.maxFinite,
            child: SliderTheme(
              data: SliderThemeData(
                trackShape: RoundedRectSliderTrackShape(),
                activeTrackColor: theme.colorScheme.secondaryContainer,
                inactiveTrackColor: appTheme.gray200,
                thumbColor: appTheme.whiteA70001,
                thumbShape: RoundSliderThumbShape(),
              ),
              child: RangeSlider(
                values: RangeValues(
                  0,
                  0,
                ),
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
              ),
            ),
          ),
          SizedBox(height: 4.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReligionMaritalStatusSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_religion".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: Text(
                    "lbl_marital_status".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: Consumer(
                    builder: (context, ref, _) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 22.h,
                            width: 22.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        iconSize: 22.h,
                        hintText: "lbl_hindu".tr,
                        items: ref
                                .watch(filterNotifier)
                                .filterModelObj
                                ?.dropdownItemList ??
                            [],
                        contentPadding:
                            EdgeInsets.fromLTRB(14.h, 10.h, 6.h, 10.h),
                      );
                    },
                  ),
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: Consumer(
                    builder: (context, ref, _) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 22.h,
                            width: 22.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        iconSize: 22.h,
                        hintText: "lbl_never_married".tr,
                        items: ref
                                .watch(filterNotifier)
                                .filterModelObj
                                ?.dropdownItemList1 ??
                            [],
                        contentPadding:
                            EdgeInsets.fromLTRB(14.h, 10.h, 6.h, 10.h),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubcasteSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_subcaste".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.h),
          Consumer(
            builder: (context, ref, _) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.only(left: 6.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 22.h,
                    width: 22.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 22.h,
                hintText: "msg_leva_patidar_maratha".tr,
                items: ref
                        .watch(filterNotifier)
                        .filterModelObj
                        ?.dropdownItemList2 ??
                    [],
                contentPadding: EdgeInsets.fromLTRB(14.h, 10.h, 6.h, 10.h),
                borderDecoration: DropDownStyleHelper.outlineBlueGrayETL10,
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStateLanguageSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_state".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 10.h),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomDropDown(
                      width: 164.h,
                      icon: Container(
                        margin: EdgeInsets.only(left: 6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdown,
                          height: 22.h,
                          width: 22.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      iconSize: 22.h,
                      hintText: "lbl_gujarat".tr,
                      items: ref
                              .watch(filterNotifier)
                              .filterModelObj
                              ?.dropdownItemList3 ??
                          [],
                      contentPadding:
                          EdgeInsets.fromLTRB(14.h, 10.h, 6.h, 10.h),
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(
            width: 162.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_language".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 10.h),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.only(left: 6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdown,
                          height: 22.h,
                          width: 22.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      iconSize: 22.h,
                      hintText: "lbl_gujarati".tr,
                      items: ref
                              .watch(filterNotifier)
                              .filterModelObj
                              ?.dropdownItemList4 ??
                          [],
                      contentPadding:
                          EdgeInsets.fromLTRB(14.h, 10.h, 6.h, 10.h),
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
  Widget _buildEducationProfessionSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_education".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 10.h),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomDropDown(
                      width: 164.h,
                      icon: Container(
                        margin: EdgeInsets.only(left: 6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdown,
                          height: 22.h,
                          width: 22.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      iconSize: 22.h,
                      hintText: "lbl_b_pharma".tr,
                      items: ref
                              .watch(filterNotifier)
                              .filterModelObj
                              ?.dropdownItemList5 ??
                          [],
                      contentPadding:
                          EdgeInsets.fromLTRB(14.h, 10.h, 6.h, 10.h),
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(
            width: 162.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_professional".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 10.h),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.only(left: 6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdown,
                          height: 22.h,
                          width: 22.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      iconSize: 22.h,
                      hintText: "lbl_consultant".tr,
                      items: ref
                              .watch(filterNotifier)
                              .filterModelObj
                              ?.dropdownItemList6 ??
                          [],
                      contentPadding:
                          EdgeInsets.fromLTRB(14.h, 10.h, 6.h, 10.h),
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
  Widget _buildGlobalModeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_global".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomSwitch(
                      value: ref.watch(filterNotifier).isSelectedSwitch,
                      onChange: (value) {
                        ref
                            .read(filterNotifier.notifier)
                            .changeSwitchBox(value);
                      },
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            "msg_the_global_mode".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumMontserratGray60002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShowMeWithProfileSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_show_me_with_profile".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomSwitch(
                      value: ref.watch(filterNotifier).isSelectedSwitch1,
                      onChange: (value) {
                        ref
                            .read(filterNotifier.notifier)
                            .changeSwitchBox1(value);
                      },
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
  Widget _buildShowMeOnlyWithProfileSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_show_me_only_with".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomSwitch(
                      value: ref.watch(filterNotifier).isSelectedSwitch2,
                      onChange: (value) {
                        ref
                            .read(filterNotifier.notifier)
                            .changeSwitchBox2(value);
                      },
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Text(
            "msg_you_can_turn_off".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumMontserratGray60002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyFilterSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomElevatedButton(
            height: 44.h,
            text: "lbl_apply_filter".tr,
            margin: EdgeInsets.only(bottom: 12.h),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA70001_1,
          )
        ],
      ),
    );
  }
}
