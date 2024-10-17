import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../../core/app_export.dart';
import '../models/userlist_item_model.dart';

// ignore_for_file: must_be_immutable
class UserlistItemWidget extends StatelessWidget {
  UserlistItemWidget(this.userlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserlistItemModel userlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76.h,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadiusStyle.circleBorder38,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 74.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup317,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: userlistItemModelObj.saraWone!,
                        height: 66.h,
                        width: 68.h,
                        radius: BorderRadius.circular(
                          32.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 22.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              CustomImageView(
                                imagePath: userlistItemModelObj.saraWthree!,
                                height: 22.h,
                                width: 24.h,
                              ),
                              CustomImageView(
                                imagePath: userlistItemModelObj.saraWfive!,
                                height: 10.h,
                                width: 12.h,
                                margin: EdgeInsets.only(right: 6.h),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            userlistItemModelObj.saraw!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallGray70001,
          )
        ],
      ),
    );
  }
}
