import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/forget_password_model.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/update_email_model.dart';
import 'package:ondemand/data/auth/models/update_password_model.dart';
import 'package:ondemand/data/auth/models/update_username_model.dart';
import 'package:ondemand/data/auth/models/upload_image_to_profile_model.dart';
import 'package:ondemand/domain/providers/repository_provider.dart';
import 'package:ondemand/helpers/base_view_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/utils.dart';

final authViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => LoginViewModel(
    ref.read(authRepositoryProvider),
  ),
);

class LoginViewModel extends BaseViewModel<BaseScreenView> {
  final UserDetailService _userDetailService = getIt<UserDetailService>();

  final AuthRepo _authRepo;
  LoginViewModel(
    this._authRepo,
  );
  Future<void> login(LoginRequest loginRequest, BuildContext context) async {
    toggleLoading();
    await _authRepo.login(loginRequest).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            AppConstants.userId = r.userId ?? "";
            await SharedPreferenceService.setString(
              AppConstants.userIdPref,
              AppConstants.userId,
            );
            print("this is userId" + AppConstants.userId);
            getUserDetails(r.userId ?? "", context, shouldNavigate: false);
            isSubscribed(context);
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);
            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> isSubscribed(BuildContext context) async {
    toggleLoading();
    await _authRepo.fetchSubscription().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            if (r.data == "active") {
              AppConstants.isSubscribed = true;
            } else if (r.data == "in_trial") {
              AppConstants.isSubscribed = true;
            } else if (r.data == "non_renewing") {
              AppConstants.isSubscribed = true;
            } else {
              AppConstants.isSubscribed = false;
            }
            print("this is subscription status" + r.toString());
            notifyListeners();
            if (AppConstants.isSubscribed == true) {
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //     AppRoute.bottomNavigationView.name, (route) => false);
              context.pushReplacementNamed(AppRoute.bottomNavigationView.name);
            } else {
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //     AppRoute.z.name, (route) => false);
              context.pushReplacementNamed(AppRoute.subscriptionView.name);

              // view!.navigateToScreen(AppRoute.subscriptionView);
            }
            Logger.write(r.toString());

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> uploadSingleFile(File file, BuildContext context) async {
    await _authRepo.uploadSingleFile(file).then(
          (value) => value.fold((l) {
            view?.showSnackbar(l.message);
          }, (r) async {
            print(r);
            await uploadImageAToProf(
                UploadImageProfileRequest(
                    userId: AppConstants.userId,
                    imageUrl: r.data?.cdnLink ??
                        r.data?.fileLink ??
                        r.data?.responseData?.location ??
                        ""),
                context);

            // context.pop();

            // fileUrl = r.;
          }),
        );
  }

  Future<void> uploadImageAToProf(
      UploadImageProfileRequest uploadImageProfileRequest,
      BuildContext context) async {
    await _authRepo.uploadImageProfile(uploadImageProfileRequest).then(
          (value) => value.fold((l) {
            view?.showSnackbar(l.message);
          }, (r) {
            getUserDetails(AppConstants.userId, context);
            // context.pop();
            // getUserDetails(AppConstants.userId, context);
            // fileUrl = r.;
          }),
        );
  }

  Future<void> getUserDetails(String ID, BuildContext context,
      {bool shouldNavigate = false}) async {
    toggleLoading();
    await _authRepo.getUserdetails(ID).then(
          (value) => value.fold((l) {
            view!.navigateToScreen(AppRoute.onboardingView);
          }, (r) async {
            Logger.write(r.toString());
            _userDetailService.setuserDetail(r);
            if (shouldNavigate) {
              await isSubscribed(context);
            }
            // view!.navigateToScreen(AppRoute.subscriptionView);
            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> uopdateUserName(
    UpdateUsernameRequest updateUsernameRequest,
    BuildContext context,
  ) async {
    toggleLoading();
    await _authRepo.updateUserName(updateUsernameRequest).then(
          (value) => value.fold((l) {
            // view!.navigateToScreen(AppRoute.onboardingView);
          }, (r) async {
            Logger.write(r.toString());
            // _userDetailService.setuserDetail(r);
            // if (shouldNavigate) {
            //   context?.pushReplacementNamed(AppRoute.bottomNavigationView.name);
            // }
            // view!.navigateToScreen(AppRoute.subscriptionView);
            getUserDetails(AppConstants.userId, context)
                .then((value) => context.pop());

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> updatePassword(
    UpdatePasswordRequest updatePasswordRequest,
    BuildContext context,
  ) async {
    toggleLoading();
    await _authRepo.updatePassword(updatePasswordRequest).then(
          (value) => value.fold((l) {
            // view!.navigateToScreen(AppRoute.onboardingView);
          }, (r) async {
            Logger.write(r.toString());
            // _userDetailService.setuserDetail(r);
            // if (shouldNavigate) {
            //   context?.pushReplacementNamed(AppRoute.bottomNavigationView.name);
            // }
            // view!.navigateToScreen(AppRoute.subscriptionView);
            context.pop();

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> updateEmail(
    UpdateEmailRequest updateEmailRequest,
    BuildContext context,
  ) async {
    toggleLoading();
    await _authRepo.updateEmail(updateEmailRequest).then(
          (value) => value.fold((l) {
            // view!.navigateToScreen(AppRoute.onboardingView);
          }, (r) async {
            Logger.write(r.toString());
            // _userDetailService.setuserDetail(r);
            // if (shouldNavigate) {
            //   context?.pushReplacementNamed(AppRoute.bottomNavigationView.name);
            // }
            // view!.navigateToScreen(AppRoute.subscriptionView);
            getUserDetails(AppConstants.userId, context)
                .then((value) => context.pop());

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> deleteAccount(
    BuildContext context,
  ) async {
    toggleLoading();
    await _authRepo.deleteAccount().then(
          (value) => value.fold((l) {
            // view!.navigateToScreen(AppRoute.onboardingView);
          }, (r) async {
            Logger.write(r.toString());
            // _userDetailService.setuserDetail(r);
            // if (shouldNavigate) {
            //   context?.pushReplacementNamed(AppRoute.bottomNavigationView.name);
            // }
            // view!.navigateToScreen(AppRoute.subscriptionView);
            SharedPreferenceService.clearAll();
            AppConstants.token = "";
            AppConstants.isSubscribed = false;
            AppConstants.userId = "";
            context.pushReplacementNamed(AppRoute.onboardingView.name);

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest, BuildContext context) async {
    toggleLoading();
    await _authRepo.forgetPassword(forgetPasswordRequest).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            context.pop();
            if (r.status == "Success") {
              view!.showSnackbar(
                  "Check your email for a link to reset your password");
            } else {
              view!.showSnackbar(r.status.toString());
            }
            Logger.write(r.toString());

            // view!.navigateToScreen(AppRoute.subscriptionView);
            notifyListeners();
          }),
        );
    toggleLoading();
  }
}
