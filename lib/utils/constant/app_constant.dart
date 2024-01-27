import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/utils/themes/color_themes.dart';

abstract class AppConstants {}

SizedBox extraSmallSpaceh = const SizedBox(
  height: 6,
);
SizedBox extraSmallSpacew = const SizedBox(
  width: 6,
);
SizedBox smallSpaceh = const SizedBox(
  height: 10,
);
SizedBox smallSpacew = const SizedBox(
  width: 10,
);
SizedBox mediumSpaceh = const SizedBox(
  height: 20,
);
SizedBox mediumSpacew = const SizedBox(
  width: 20,
);
SizedBox largeSpaceh = const SizedBox(
  height: 40,
);
SizedBox largeSpacew = const SizedBox(
  width: 50,
);

abstract class SharePrefKeys {
  static const userEmail = 'email';
  static const userToken = 'token';
  static const isGoogleSignIn = 'is_google_sign_in';
  static const currentRequestList = 'current_requests_list';
  static const onGoingStaysList = 'ongoing_stays_list';
  static const requestedUpdatesList = 'requested_updates_list';
  static const deferredRequestList = 'deffered_request_list';
  static const previousStaysList = 'previous_stays_list';
  static const manageProfileData = 'manage_profile_data';
  static const reportsList = 'reports_list';
  static const userDataResponse = 'user_data_response';
}

showSuccessSnackBar(title, msg) {
  Get.snackbar(title, msg, colorText: white, backgroundColor: successColor);
}

showDangerSnackBar(title, msg) {
  Get.snackbar(title, msg, colorText: white, backgroundColor: dangerColor);
}
