import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/forget_password_model.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/update_email_model.dart';
import 'package:ondemand/data/auth/models/update_password_model.dart';
import 'package:ondemand/data/auth/models/update_username_model.dart';
import 'package:ondemand/domain/providers/repository_provider.dart';
import 'package:ondemand/helpers/base_screen_view.dart';
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
            AppConstants.userType = r.userType ??"";
            print("this is the usertype" +  AppConstants.userType);
            await SharedPreferenceService.setString(
              AppConstants.userIdPref,
              AppConstants.userId,
            );
              await SharedPreferenceService.setString(
              AppConstants.userTypePref,
              AppConstants.userType,
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
             print("this is subscription status" + r.toString());
            if (r.data == "active") {
              AppConstants.isSubscribed = true;
            } else if (r.data == "in_trial") {
              AppConstants.isSubscribed = true;
            } else if (r.data == "non_renewing") {
              AppConstants.isSubscribed = true;
            } else {
              AppConstants.isSubscribed = false;
            }
            print("this is the subscription" +r.data.toString());
                   print("this is the subscription status" +AppConstants.isSubscribed.toString() +"this is the userrole"+  AppConstants.userType);
           
            notifyListeners();
            if (AppConstants.isSubscribed == true   && (AppConstants.userType == "studio-owner" ||  AppConstants.userType == "subuser" ||  AppConstants.userType == "" || AppConstants.userType == "user"  )  )  {
              // view!.navigateToScreen(AppRoute.bottomNavigationView);

              context.replaceNamed(AppRoute.bottomNavigationView.name);
            } else if (AppConstants.isSubscribed == false   && (AppConstants.userType == "studio-owner" ||  AppConstants.userType == "subuser" )){
                // view!.navigateToScreen(AppRoute.bottomNavigationView);
                SharedPreferenceService.clearAll();
                view!.showSnackbar("Subscription status is Inactive. Please reach out to your Studio Admin for support.");

            }else{
  // view!.navigateToScreen(AppRoute.subscriptionView);
    context.replaceNamed(AppRoute.subscriptionView.name);
            }
            Logger.write(r.toString());

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<String?> uploadSingleFile(File file, BuildContext context) async {
    String? fileUrl;

    await _authRepo.uploadSingleFile(file).then(
          (value) => value.fold((l) {
            view?.showSnackbar(l.message);
            return "";
          }, (r) {
            context.pop();
            getUserDetails(AppConstants.userId, context);
            // fileUrl = r.;
          }),
        );
    return fileUrl;
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
             view!.showSnackbar(l.message);

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
            AppConstants.userType ="";
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
