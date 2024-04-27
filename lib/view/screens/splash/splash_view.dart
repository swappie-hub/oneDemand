// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:chargebee_flutter/chargebee_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/services/shared_preference_service.dart';

import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/login/login_view_model.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> with BaseScreenView {
  late LoginViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(authViewModel);
    _viewModel.attachView(this);
    // TODO: implement initState
    Future.delayed(const Duration(milliseconds: 200)).then((value) async {
      try {
        await Chargebee.configure(
            "thegodfreymethod",
            "live_TcSjRmd7vOHtlD9eeon8NjowsgzLw0im",
            "cb-z6r4nv6eafg3hbwmqtjxfjpoee",
            "cb-yoaivqsm4rhv5eojomk2vvgcc4");
      } on PlatformException catch (e) {
        print(
            'Error cargebee: ${e.message}, Error Details: ${e.details}, Error Code: ${e.code}');
      }
      try {
        final result =
            await Chargebee.retrieveProductIdentifiers({"limit": "100"});
        print("these are products" + result.toString());
      } on PlatformException catch (e) {
        print(
            'Error Message: ${e.message}, Error Details: ${e.details}, Error Code: ${e.code}');
      }
      final String? token =
          SharedPreferenceService.getString(AppConstants.authTokenPref);
      final String? userId =
          SharedPreferenceService.getString(AppConstants.userIdPref);
      setState(() {
        AppConstants.token = token ?? "";
        AppConstants.userId = userId ?? "";
        print("this is token :" + AppConstants.token);
        print("this is userId :" + AppConstants.userId);
      });
      if (AppConstants.token != "") {
        _viewModel.getUserDetails(AppConstants.userId, context,
            shouldNavigate: true);
      } else {
        navigateToScreen(AppRoute.onboardingView);
      }
    }
        //  getNavigation()

        );
  }

  // Future<void> getNavigation() async {
  //   final String? lang =
  //       SharedPreferenceService.getString(AppConstants.languagePref);
  //   final String? token =
  //       SharedPreferenceService.getString(AppConstants.authTokenPref);
  //   final String? userId =
  //       SharedPreferenceService.getString(AppConstants.userIdPref);
  //   final bool isGuestLogin =
  //       SharedPreferenceService.getBool(AppConstants.isGuestPref) ?? false;
  //   AppConstants.language = lang ?? "en";
  //   AppConstants.isGuest = isGuestLogin;

  //   setState(() {});
  //   if (isGuestLogin == true) {
  //     context.setLocale(Locale(AppConstants.language));
  //     context.pushReplacementNamed(
  //       AppRoute.bottomNavigationView.name,
  //       pathParameters: {'index': "1"},
  //     );
  //     // navigateToScreen(AppRoute.bottomNavigationView);
  //   } else if (token != null) {
  //     AppConstants.token = token;
  //     AppConstants.userId = userId ?? "";
  //     context.setLocale(Locale(AppConstants.language));
  //     await _viewModel
  //         .getUserDetails()
  //         .then((value) => context.pushReplacementNamed(
  //               AppRoute.bottomNavigationView.name,
  //               pathParameters: {'index': "1"},
  //             ));
  //   } else {
  //     navigateToScreen(AppRoute.authView);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(authViewModel);

    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                "assets/images/logo_big.png",
                height: 120.h,
                width: 250.w,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    context.pushReplacementNamed(
      appRoute.name,
    );
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
