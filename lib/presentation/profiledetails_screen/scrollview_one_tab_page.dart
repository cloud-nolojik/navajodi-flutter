import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_text_form_field.dart';
import 'models/scrollview_one_tab_model.dart';
import 'notifier/profiledetails_notifier.dart';

class ScrollviewOneTabPage extends ConsumerStatefulWidget {
  const ScrollviewOneTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  ScrollviewOneTabPageState createState() => ScrollviewOneTabPageState();
}

class ScrollviewOneTabPageState extends ConsumerState<ScrollviewOneTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 18.h,
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildAboutSection(context),
                  SizedBox(height: 26.h),
                  _buildPersonalInfo(context),
                  SizedBox(height: 26.h),
                  _buildEducationSection(context),
                  SizedBox(height: 26.h),
                  Text(
                    "lbl_career".tr,
                    style: CustomTextStyles.titleMediumGray800,
                  ),
                  SizedBox(height: 14.h),
                  _buildCareerSection(context),
                  SizedBox(height: 24.h),
                  Text(
                    "lbl_kundli_astro".tr,
                    style: CustomTextStyles.titleMediumGray800,
                  ),
                  SizedBox(height: 14.h),
                  _buildKundliSection(context),
                  SizedBox(height: 24.h),
                  _buildContactSection(context),
                  SizedBox(height: 24.h),
                  _buildLifestyleSection(context),
                  SizedBox(height: 24.h),
                  _buildHobbiesSection(context),
                  SizedBox(height: 24.h),
                  _buildInterestsSection(context),
                  SizedBox(height: 24.h),
                  _buildDressStyleSection(context),
                  SizedBox(height: 24.h),
                  _buildCuisineSection(context)
                ],
              ),
            )
          ],
        ),
      ),
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

  /// Section Widget
  Widget _buildAboutSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_about".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 8.h),
          Container(
            width: 340.h,
            margin: EdgeInsets.only(right: 2.h),
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
              border: Border.all(
                color: appTheme.blueGray1008e,
                width: 1.h,
              ),
            ),
            child: ReadMoreText(
              "msg_we_have_positively".tr,
              trimLines: 6,
              colorClickableText: theme.colorScheme.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle:
                  CustomTextStyles.bodyMediumMontserratGray60001.copyWith(
                height: 1.79,
              ),
              lessStyle:
                  CustomTextStyles.bodyMediumMontserratGray60001.copyWith(
                height: 1.79,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonalInfo(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_tamanna_s_info".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 12.h,
              top: 10.h,
              bottom: 10.h,
            ),
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadiusStyle.roundedBorder10,
              border: Border.all(
                color: appTheme.blueGray1008e,
                width: 1.h,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_english_spain".tr,
                        style: CustomTextStyles.titleSmallBluegray80001_1,
                      ),
                      TextSpan(
                        text: "lbl".tr,
                        style: CustomTextStyles.titleSmallGray60001,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_4_more".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 6.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_govt".tr,
                        style: CustomTextStyles.titleSmallBluegray80001_1,
                      ),
                      TextSpan(
                        text: "lbl2".tr,
                        style: CustomTextStyles.titleSmallGray60001,
                      ),
                      TextSpan(
                        text: "msg_banking_proffesional".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 6.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_income".tr,
                        style: CustomTextStyles.titleSmallBluegray80001_1,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "msg_rs_5_7_lakh_per".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 6.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_b_e".tr,
                        style: CustomTextStyles.titleSmallBluegray80001_1,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_b_tech".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 6.h),
                Text(
                  "lbl_never_married".tr,
                  style: CustomTextStyles.titleSmallBluegray80001,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEducationSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_education".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 8.h,
            ),
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadiusStyle.roundedBorder10,
              border: Border.all(
                color: appTheme.blueGray1008e,
                width: 1.h,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_under_graduation".tr,
                  style: CustomTextStyles.titleMediumBluegray80002Medium,
                ),
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameBlueGray80001,
                        height: 24.h,
                        width: 24.h,
                      ),
                      SizedBox(width: 12.h),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: _buildSchoolDetails(
                            context,
                            laxmibaividhya:
                                "msg_barkatullah_vishwavidyalaya".tr,
                            cbseOne: "lbl_b_e_b_tech2".tr,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "lbl_school".tr,
                  style: CustomTextStyles.titleMediumBluegray80002Medium,
                ),
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameBlueGray80001,
                        height: 24.h,
                        width: 24.h,
                      ),
                      SizedBox(width: 12.h),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: _buildSchoolDetails(
                            context,
                            laxmibaividhya: "msg_laxmibai_vidhya".tr,
                            cbseOne: "lbl_cbse".tr,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.h)
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmploymentDetails(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(profiledetailsNotifier).employmentDetailsController,
          hintText: "msg_goverment_public".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 8.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOccupationDetails(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(profiledetailsNotifier).occupationDetailsController,
          hintText: "msg_banking_proffesional".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 8.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildIncomeDetails(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(profiledetailsNotifier).incomeDetailsController,
          hintText: "msg_rs_5_7_lakh_per2".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 8.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCareerSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.whiteA70001,
        borderRadius: BorderRadiusStyle.roundedBorder10,
        border: Border.all(
          color: appTheme.blueGray1008e,
          width: 1.h,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_employee_in".tr,
            style: CustomTextStyles.titleMediumBluegray80002Medium,
          ),
          SizedBox(height: 2.h),
          _buildEmploymentDetails(context),
          SizedBox(height: 10.h),
          Text(
            "lbl_occupation".tr,
            style: CustomTextStyles.titleMediumBluegray80002Medium,
          ),
          SizedBox(height: 2.h),
          _buildOccupationDetails(context),
          SizedBox(height: 10.h),
          Text(
            "lbl_earning".tr,
            style: CustomTextStyles.titleMediumBluegray80002Medium,
          ),
          SizedBox(height: 2.h),
          _buildIncomeDetails(context),
          SizedBox(height: 4.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBirthDetails(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          readOnly: true,
          controller: ref.watch(profiledetailsNotifier).birthDetailsController,
          hintText: "lbl_jun_15_1998".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 8.h,
          ),
          onTap: () {
            onTapBirthDetails(context);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildKundliSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.whiteA70001,
        borderRadius: BorderRadiusStyle.roundedBorder10,
        border: Border.all(
          color: appTheme.blueGray1008e,
          width: 1.h,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_date_time_of_birth".tr,
            style: CustomTextStyles.titleMediumBluegray80002Medium,
          ),
          SizedBox(height: 4.h),
          _buildBirthDetails(context),
          SizedBox(height: 4.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneContact(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(profiledetailsNotifier).phoneContactController,
          hintText: "lbl_91_94596_92666".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 8.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailContact(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(profiledetailsNotifier).emailContactController,
          hintText: "msg_tamannabhatia_gmail_com".tr,
          textInputType: TextInputType.emailAddress,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 8.h,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContactSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_contact".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 8.h,
            ),
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadiusStyle.roundedBorder10,
              border: Border.all(
                color: appTheme.blueGray1008e,
                width: 1.h,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_phone_name".tr,
                  style: CustomTextStyles.titleMediumBluegray80002Medium,
                ),
                SizedBox(height: 4.h),
                _buildPhoneContact(context),
                SizedBox(height: 8.h),
                Text(
                  "lbl_e_mail".tr,
                  style: CustomTextStyles.titleMediumBluegray80002Medium,
                ),
                SizedBox(height: 4.h),
                _buildEmailContact(context),
                SizedBox(height: 4.h)
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLifestyleDetails(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(profiledetailsNotifier).lifestyleDetailsController,
          hintText: "lbl_own_house_car".tr,
          hintStyle: CustomTextStyles.titleSmallBluegray80001,
          maxLines: 2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 12.h),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayE,
          fillColor: appTheme.whiteA70001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLifestyleSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_tamanna_s_lifestyle".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 14.h),
          _buildLifestyleDetails(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHobbiesDetails(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(profiledetailsNotifier).hobbiesDetailsController,
          hintText: "msg_painting_cooking".tr,
          hintStyle: CustomTextStyles.titleSmallBluegray80001,
          maxLines: 2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 12.h),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayE,
          fillColor: appTheme.whiteA70001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHobbiesSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_hobbies".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 14.h),
          _buildHobbiesDetails(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInterestsDetails(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(profiledetailsNotifier).interestsDetailsController,
          hintText: "msg_writing_reading".tr,
          maxLines: 3,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 12.h),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayE,
          fillColor: appTheme.whiteA70001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInterestsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_intrests".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 14.h),
          _buildInterestsDetails(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDressStyleDetails(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(profiledetailsNotifier).dressStyleDetailsController,
          hintText: "msg_classic_indian".tr,
          maxLines: 3,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 12.h),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayE,
          fillColor: appTheme.whiteA70001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDressStyleSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_dress_style".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 14.h),
          _buildDressStyleDetails(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCuisinePreferences(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(profiledetailsNotifier).cuisinePreferencesController,
          hintText: "msg_south_indian_punjabi".tr,
          textInputAction: TextInputAction.done,
          maxLines: 2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 12.h),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayE,
          fillColor: appTheme.whiteA70001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCuisineSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_favorite_cuisine".tr,
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 14.h),
          _buildCuisinePreferences(context)
        ],
      ),
    );
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [scrollviewOneTabModelObj] object of the current [birthDetailsController] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapBirthDetails(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: ref
                .watch(profiledetailsNotifier)
                .scrollviewOneTabModelObj!
                .selectedBirthDetails ??
            DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      ref
          .watch(profiledetailsNotifier)
          .scrollviewOneTabModelObj!
          .selectedBirthDetails = dateTime;
      ref.watch(profiledetailsNotifier).birthDetailsController?.text =
          dateTime.format(pattern: dateTimeFormatPattern);
    }
  }
}
