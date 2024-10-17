part of 'profiledetails_notifier.dart';

/// Represents the state of Profiledetails in the application.

// ignore_for_file: must_be_immutable
class ProfiledetailsState extends Equatable {
  ProfiledetailsState(
      {this.employmentDetailsController,
      this.occupationDetailsController,
      this.incomeDetailsController,
      this.birthDetailsController,
      this.phoneContactController,
      this.emailContactController,
      this.lifestyleDetailsController,
      this.hobbiesDetailsController,
      this.interestsDetailsController,
      this.dressStyleDetailsController,
      this.cuisinePreferencesController,
      this.scrollviewOneTabModelObj,
      this.profiledetailsModelObj});

  TextEditingController? employmentDetailsController;

  TextEditingController? occupationDetailsController;

  TextEditingController? incomeDetailsController;

  TextEditingController? birthDetailsController;

  TextEditingController? phoneContactController;

  TextEditingController? emailContactController;

  TextEditingController? lifestyleDetailsController;

  TextEditingController? hobbiesDetailsController;

  TextEditingController? interestsDetailsController;

  TextEditingController? dressStyleDetailsController;

  TextEditingController? cuisinePreferencesController;

  ProfiledetailsModel? profiledetailsModelObj;

  ScrollviewOneTabModel? scrollviewOneTabModelObj;

  @override
  List<Object?> get props => [
        employmentDetailsController,
        occupationDetailsController,
        incomeDetailsController,
        birthDetailsController,
        phoneContactController,
        emailContactController,
        lifestyleDetailsController,
        hobbiesDetailsController,
        interestsDetailsController,
        dressStyleDetailsController,
        cuisinePreferencesController,
        scrollviewOneTabModelObj,
        profiledetailsModelObj
      ];
  ProfiledetailsState copyWith({
    TextEditingController? employmentDetailsController,
    TextEditingController? occupationDetailsController,
    TextEditingController? incomeDetailsController,
    TextEditingController? birthDetailsController,
    TextEditingController? phoneContactController,
    TextEditingController? emailContactController,
    TextEditingController? lifestyleDetailsController,
    TextEditingController? hobbiesDetailsController,
    TextEditingController? interestsDetailsController,
    TextEditingController? dressStyleDetailsController,
    TextEditingController? cuisinePreferencesController,
    ScrollviewOneTabModel? scrollviewOneTabModelObj,
    ProfiledetailsModel? profiledetailsModelObj,
  }) {
    return ProfiledetailsState(
      employmentDetailsController:
          employmentDetailsController ?? this.employmentDetailsController,
      occupationDetailsController:
          occupationDetailsController ?? this.occupationDetailsController,
      incomeDetailsController:
          incomeDetailsController ?? this.incomeDetailsController,
      birthDetailsController:
          birthDetailsController ?? this.birthDetailsController,
      phoneContactController:
          phoneContactController ?? this.phoneContactController,
      emailContactController:
          emailContactController ?? this.emailContactController,
      lifestyleDetailsController:
          lifestyleDetailsController ?? this.lifestyleDetailsController,
      hobbiesDetailsController:
          hobbiesDetailsController ?? this.hobbiesDetailsController,
      interestsDetailsController:
          interestsDetailsController ?? this.interestsDetailsController,
      dressStyleDetailsController:
          dressStyleDetailsController ?? this.dressStyleDetailsController,
      cuisinePreferencesController:
          cuisinePreferencesController ?? this.cuisinePreferencesController,
      scrollviewOneTabModelObj:
          scrollviewOneTabModelObj ?? this.scrollviewOneTabModelObj,
      profiledetailsModelObj:
          profiledetailsModelObj ?? this.profiledetailsModelObj,
    );
  }
}
