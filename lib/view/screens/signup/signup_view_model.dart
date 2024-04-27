import 'package:flutter/material.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/domain/providers/repository_provider.dart';
import 'package:ondemand/helpers/base_screen_view.dart';
import 'package:ondemand/helpers/base_view_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/utils.dart';

final signupViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => SignupViewModel(
    ref.read(authRepositoryProvider),
  ),
);

class SignupViewModel extends BaseViewModel<BaseScreenView> {
  final UserDetailService _userDetailService = getIt<UserDetailService>();

  final AuthRepo _authRepo;
  SignupViewModel(
    this._authRepo,
  );
  Future<void> signup(SignupRequest signupRequest, BuildContext context) async {
    toggleLoading();
    await _authRepo.signup(signupRequest).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            AppConstants.userId = r.userId ?? "";
            await SharedPreferenceService.setString(
              AppConstants.userIdPref,
              AppConstants.userId,
            );
            await getUserDetails(r.userId ?? "", context, shouldNavigate: true);
            Logger.write(r.toString());

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> getUserDetails(String ID, BuildContext context,
      {bool shouldNavigate = false}) async {
    toggleLoading();
    await _authRepo.getUserdetails(ID).then(
          (value) => value.fold((l) {
            // view!.navigateToScreen(AppRoute.onboardingView);
          }, (r) async {
            Logger.write(r.toString());
            _userDetailService.setuserDetail(r);
            context.pushNamed(AppRoute.subscriptionView.name);
            // view!.navigateToScreen(AppRoute.subscriptionView);
            // if (shouldNavigate) {
            // await isSubscribed(context);
            // }
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
              view!.navigateToScreen(AppRoute.bottomNavigationView);
            } else {
              view!.navigateToScreen(AppRoute.subscriptionView);
            }
            Logger.write(r.toString());

            notifyListeners();
          }),
        );
    toggleLoading();
  }
}
