import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/profiledetails_model.dart';
import '../models/scrollview_one_tab_model.dart';
part 'profiledetails_state.dart';

final profiledetailsNotifier = StateNotifierProvider.autoDispose<
    ProfiledetailsNotifier, ProfiledetailsState>(
  (ref) => ProfiledetailsNotifier(ProfiledetailsState(
    employmentDetailsController: TextEditingController(),
    occupationDetailsController: TextEditingController(),
    incomeDetailsController: TextEditingController(),
    birthDetailsController: TextEditingController(),
    phoneContactController: TextEditingController(),
    emailContactController: TextEditingController(),
    lifestyleDetailsController: TextEditingController(),
    hobbiesDetailsController: TextEditingController(),
    interestsDetailsController: TextEditingController(),
    dressStyleDetailsController: TextEditingController(),
    cuisinePreferencesController: TextEditingController(),
    scrollviewOneTabModelObj: ScrollviewOneTabModel(),
  )),
);

/// A notifier that manages the state of a Profiledetails according to the event that is dispatched to it.
class ProfiledetailsNotifier extends StateNotifier<ProfiledetailsState> {
  ProfiledetailsNotifier(ProfiledetailsState state) : super(state);
}
