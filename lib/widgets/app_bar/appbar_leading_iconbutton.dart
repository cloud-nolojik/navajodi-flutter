import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_icon_button.dart';

class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton(
      {Key? key,
      this.imagePath,
      this.height,
      this.width,
      this.onTap,
      this.margin})
      : super(
          key: key,
        );

  final double? height;

  final double? width;

  final String? imagePath;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: CustomIconButton(
              height: height ?? 44.h,
              width: width ?? 44.h,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineTL12,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA7000144x44,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
