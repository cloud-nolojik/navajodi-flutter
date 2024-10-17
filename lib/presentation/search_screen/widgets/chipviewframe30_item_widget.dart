import 'package:flutter/material.dart' hide SearchController;
import '../../../core/app_export.dart';
import '../models/chipviewframe30_item_model.dart';

// ignore_for_file: must_be_immutable
class Chipviewframe30ItemWidget extends StatelessWidget {
  Chipviewframe30ItemWidget(this.chipviewframe30ItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
          key: key,
        );

  Chipviewframe30ItemModel chipviewframe30ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 10.h,
        right: 10.h,
        bottom: 10.h,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewframe30ItemModelObj.frame3015One!,
        style: TextStyle(
          color: theme.colorScheme.onPrimaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgFrameOnprimarycontainer,
        height: 20.h,
        width: 20.h,
        margin: EdgeInsets.only(right: 4.h),
      ),
      selected: (chipviewframe30ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.whiteA70001,
      selectedColor: theme.colorScheme.primary,
      shape: (chipviewframe30ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray10001,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                6.h,
              ))
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray10001,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
