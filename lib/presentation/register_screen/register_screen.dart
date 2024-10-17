import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'notifier/register_notifier.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

// ignore_for_file: must_be_immutable
class RegisterScreenState extends ConsumerState<RegisterScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo5001,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 30.h,
                  right: 16.h,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaskGroup,
                      height: 64.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 60.h),
                    ),
                    SizedBox(height: 26.h),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 22.h,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA70001,
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black900.withOpacity(0.06),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              8,
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 12.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_hey_enter_your2".tr,
                                  style:
                                      CustomTextStyles.titleMediumBluegray700_1,
                                ),
                                TextSpan(
                                  text: "lbl_wedin".tr,
                                  style: CustomTextStyles.titleMediumPrimary,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 18.h),
                          _buildUsernameInput(context),
                          SizedBox(height: 14.h),
                          _buildEmailInput(context),
                          SizedBox(height: 14.h),
                          _buildPasswordInput(context),
                          SizedBox(height: 14.h),
                          _buildConfirmPasswordInput(context),
                          SizedBox(height: 24.h),
                          _buildRegisterButton(context)
                        ],
                      ),
                    ),
                    SizedBox(height: 26.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_already_have_an2".tr,
                            style: CustomTextStyles.titleMediumBluegray400,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_login_now".tr,
                            style: CustomTextStyles.titleMediumPrimary16,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 14.h)
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildHeaderSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(registerNotifier).usernameInputController,
          hintText: "msg_enter_your_user".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 16.h, 10.h, 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 20.h,
              width: 16.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.h,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 16.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          fillColor: appTheme.gray50,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(registerNotifier).emailInputController,
          hintText: "msg_enter_your_email".tr,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 16.h, 10.h, 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgMessage,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.h,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 16.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          fillColor: appTheme.gray50,
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
  Widget _buildPasswordInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(registerNotifier).passwordInputController,
          hintText: "msg_enter_your_password".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 16.h, 10.h, 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.h,
          ),
          suffix: InkWell(
            onTap: () {
              ref.read(registerNotifier.notifier).changePasswordVisibility();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.h, 12.h, 16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 20.h,
                width: 20.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 54.h,
          ),
          obscureText: ref.watch(registerNotifier).isShowPassword,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 16.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          fillColor: appTheme.gray50,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(registerNotifier).confirmPasswordInputController,
          hintText: "msg_enter_your_re_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 16.h, 10.h, 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.h,
          ),
          suffix: InkWell(
            onTap: () {
              ref.read(registerNotifier.notifier).changePasswordVisibility1();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.h, 12.h, 16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 20.h,
                width: 20.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 54.h,
          ),
          obscureText: ref.watch(registerNotifier).isShowPassword1,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 16.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          fillColor: appTheme.gray50,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_register".tr,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 72.h,
            width: 258.h,
            margin: EdgeInsets.only(bottom: 12.h),
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2,
                  height: 42.h,
                  width: 116.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
