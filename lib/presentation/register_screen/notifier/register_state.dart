part of 'register_notifier.dart';

/// Represents the state of Register in the application.

// ignore_for_file: must_be_immutable
class RegisterState extends Equatable {
  RegisterState(
      {this.usernameInputController,
      this.emailInputController,
      this.passwordInputController,
      this.confirmPasswordInputController,
      this.isShowPassword = true,
      this.isShowPassword1 = true,
      this.registerModelObj});

  TextEditingController? usernameInputController;

  TextEditingController? emailInputController;

  TextEditingController? passwordInputController;

  TextEditingController? confirmPasswordInputController;

  RegisterModel? registerModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        usernameInputController,
        emailInputController,
        passwordInputController,
        confirmPasswordInputController,
        isShowPassword,
        isShowPassword1,
        registerModelObj
      ];
  RegisterState copyWith({
    TextEditingController? usernameInputController,
    TextEditingController? emailInputController,
    TextEditingController? passwordInputController,
    TextEditingController? confirmPasswordInputController,
    bool? isShowPassword,
    bool? isShowPassword1,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      usernameInputController:
          usernameInputController ?? this.usernameInputController,
      emailInputController: emailInputController ?? this.emailInputController,
      passwordInputController:
          passwordInputController ?? this.passwordInputController,
      confirmPasswordInputController:
          confirmPasswordInputController ?? this.confirmPasswordInputController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
