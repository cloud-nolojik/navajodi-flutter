import 'package:flutter/material.dart' hide SearchController;
import '../../../core/app_export.dart';
import '../models/search_seven_item_model.dart';

// ignore_for_file: must_be_immutable
class SearchSevenItemWidget extends StatelessWidget {
  SearchSevenItemWidget(this.searchSevenItemModelObj,
      {Key? key, this.onTapImgTamnnatwentynin})
      : super(
          key: key,
        );

  SearchSevenItemModel searchSevenItemModelObj;

  VoidCallback? onTapImgTamnnatwentynin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      width: 220.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: searchSevenItemModelObj.tamnnatwentynin!,
            height: 190.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              20.h,
            ),
            onTap: () {
              onTapImgTamnnatwentynin?.call();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.customBorderBL20,
              ),
              child: Container(
                height: 58.h,
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 8.h,
                  bottom: 8.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.customBorderBL20,
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 1),
                    end: Alignment(0.5, 0),
                    colors: [
                      appTheme.black900,
                      appTheme.black900.withOpacity(0)
                    ],
                  ),
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 2.h,
                        ),
                        child: Text(
                          searchSevenItemModelObj.tamnnaCounter!,
                          style: CustomTextStyles.titleSmallWhiteA70001SemiBold,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameWhiteA70001,
                      height: 20.h,
                      width: 22.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        searchSevenItemModelObj.hydrabad!,
                        style: theme.textTheme.bodySmall,
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
}
