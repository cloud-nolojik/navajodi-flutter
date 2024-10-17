import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/nearbylist_item_model.dart';

// ignore_for_file: must_be_immutable
class NearbylistItemWidget extends StatelessWidget {
  NearbylistItemWidget(this.nearbylistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  NearbylistItemModel nearbylistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 428.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: nearbylistItemModelObj.bangloreOne!,
            height: 428.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10,
                            sigmaY: 10,
                          ),
                          child: CustomIconButton(
                            height: 24.h,
                            width: 24.h,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.none,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10,
                            ),
                            child: CustomIconButton(
                              height: 32.h,
                              width: 32.h,
                              padding: EdgeInsets.all(4.h),
                              decoration: IconButtonStyleHelper.outlineTL16,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUser,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.customBorderBL20,
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        theme.colorScheme.primaryContainer.withOpacity(0),
                        appTheme.gray900
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 8.h,
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            spacing: 9,
                            activeDotColor: appTheme.whiteA70001,
                            dotColor: appTheme.whiteA70001.withOpacity(0.57),
                            dotHeight: 8.h,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 14.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      nearbylistItemModelObj.tamannaCounter!,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      nearbylistItemModelObj.yourprofile!,
                                      style: CustomTextStyles
                                          .titleSmallWhiteA70001_1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrameWhiteA70001,
                                          height: 20.h,
                                          width: 20.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text(
                                            nearbylistItemModelObj
                                                .bangloreFour!,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            CustomIconButton(
                              height: 58.h,
                              width: 58.h,
                              padding: EdgeInsets.all(18.h),
                              decoration: IconButtonStyleHelper.fillRed,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgFrameWhiteA7000158x58,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 14.h)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
