import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage(
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
      child: InkWell(
        borderRadius: BorderRadius.circular(
          22.h,
        ),
        onTap: () {
          onTap?.call();
        },
        child: CustomImageView(
          imagePath: imagePath!,
          height: height ?? 36.h,
          width: width ?? 36.h,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            22.h,
          ),
        ),
      ),
    );
  }
}
