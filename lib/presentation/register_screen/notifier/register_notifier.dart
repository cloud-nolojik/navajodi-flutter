import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/register_model.dart';
part 'register_state.dart';

final registerNotifier =
    StateNotifierProvider.autoDispose<RegisterNotifier, RegisterState>(
  (ref) => RegisterNotifier(RegisterState(
    usernameInputController: TextEditingController(),
    emailInputController: TextEditingController(),
    passwordInputController: TextEditingController(),
    confirmPasswordInputController: TextEditingController(),
    isShowPassword: true,
    isShowPassword1: true,
  )),
);

/// A notifier that manages the state of a Register according to the event that is dispatched to it.
class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier(RegisterState state) : super(state);

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }

  void changePasswordVisibility1() {
    state = state.copyWith(isShowPassword1: !(state.isShowPassword1 ?? false));
  }
}
