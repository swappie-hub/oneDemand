import 'package:flutter/material.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/subscription_model.dart';
import 'package:ondemand/domain/providers/repository_provider.dart';
import 'package:ondemand/helpers/base_screen_view.dart';
import 'package:ondemand/helpers/base_view_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/utils/utils.dart';

final subscriptionViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => SubscriptionViewModel(
    ref.read(authRepositoryProvider),
  ),
);

class SubscriptionViewModel extends BaseViewModel<BaseScreenView> {
  // final UserDetailService _userDetailService = getIt<UserDetailService>();

  SubscriptionViewModel(
    this._authRepo,
  );
  final AuthRepo _authRepo;
  SubscriptionResponse? _subscriptionResponse;
  SubscriptionResponse? get subscriptionResponse => _subscriptionResponse;
  Future<void> getSubscriptionList() async {
    toggleLoading();
    await _authRepo.getSubscriptionList().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            _subscriptionResponse = r;
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.bottomNavigationView);
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
