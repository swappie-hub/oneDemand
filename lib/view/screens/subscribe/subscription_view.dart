import 'dart:io';

import 'package:chargebee_flutter/chargebee_flutter.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/colors.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/signup/signup_view_model.dart';
import 'package:ondemand/view/screens/subscribe/subscription_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class SubscriptionView extends ConsumerStatefulWidget {
  const SubscriptionView({super.key});

  @override
  ConsumerState<SubscriptionView> createState() => _SubscriptionViewState();
}

class _SubscriptionViewState extends ConsumerState<SubscriptionView>
    with BaseScreenView {
  final UserDetailService _userDetailService = getIt<UserDetailService>();
  bool isSubscribeLoading = false;
  int val = 1;
  late SubscriptionViewModel _viewModel;
  String priceForYearly = "";
  String priceForMonthly = "";
  int newPrice = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _viewModel = ref.read(subscriptionViewModel);
    _viewModel.attachView(this);
    Future.delayed(Duration(milliseconds: 200)).then((value) async {
      await _viewModel.getSubscriptionList();
      if (_viewModel.subscriptionResponse?.list?.first.itemPrice?.price !=
          null) {
        int price =
            _viewModel.subscriptionResponse?.list?.first.itemPrice?.price ?? 0;
        if (price != 0) {
          priceForMonthly = (price / 100).toStringAsFixed(2);
        } else {
          priceForMonthly = price.toString();
        }
      }
      if (_viewModel.subscriptionResponse?.list?.last.itemPrice?.price !=
          null) {
        newPrice =
            _viewModel.subscriptionResponse?.list?.last.itemPrice?.price ?? 0;
        print(newPrice);
        if (newPrice != 0) {
          priceForYearly = "${(newPrice / 1200).toStringAsFixed(2)}";
        } else {
          priceForYearly = newPrice.toString();
        }
      }
    });

    // _viewModel.getSubscriptionList();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(subscriptionViewModel);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 0,
        backgroundColor: kBlack,
        title: Center(
          child: Image.asset(
            "assets/images/appbar_logo.png",
            height: 34.52,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Center(
                child: Text(
                  "SUBSCRIBE",
                  style: TextStyle(
                      fontFamily: "Good",
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
              InkWell(
                onTap: () {
                  context
                      .pushReplacementNamed(AppRoute.bottomNavigationView.name);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          gapH16,
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF191919),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: CustomSlidingSegmentedControl<int>(
                    initialValue: 1,
                    innerPadding: EdgeInsets.all(8),
                    isStretch: false,
                    fixedWidth: 80.w,
                    // fixedWidth: double.infinity,
                    children: {
                      1: Text(
                        "Yearly",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: smallText.sp,
                          fontFamily: "Century",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      2: Text(
                        "Monthly",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: smallText.sp,
                          fontFamily: "Century",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    },
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    thumbDecoration: BoxDecoration(
                      color: Color(0xFF0D6386),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInToLinear,
                    onValueChanged: (v) {
                      // print(v);

                      setState(() {
                        val = v;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: bgColor, borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      gapH16,
                      val == 1
                          ? Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              decoration: BoxDecoration(
                                  color: Color(0xFFB50000),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text(
                                "Most Popular",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text(
                                "Most Popular",
                                style: TextStyle(
                                    color: Colors.transparent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                      gapH16,
                      Text(
                        "On Demand - All Access",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Master your technique, afforably",
                        style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      gapH16,
                      Text(
                        "\$${val == 2 ? priceForMonthly : newPrice / 100}" +
                            "${val == 1 ? " / year" : " / month"}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        val == 2 ? "Billed monthly" : "Billed annually",
                        style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      gapH8,
                      InkWell(
                        onTap: () async {
                          // navigateToScreen(AppRoute.bottomNavigationView);
                          isSubscribeLoading = true;
                          setState(() {});
                          try {
                            final customer = CBCustomer(
                                _userDetailService.userDetailResponse?.email ??
                                    "",
                                _userDetailService
                                        .userDetailResponse?.firstname ??
                                    "",
                                _userDetailService
                                        .userDetailResponse?.lastname ??
                                    "",
                                _userDetailService.userDetailResponse?.email ??
                                    "");
                            final result = val == 1
                                ? await Chargebee.purchaseStoreProduct(
                                    Product(
                                        Platform.isAndroid ? "yearly" : "Month",
                                        _viewModel.subscriptionResponse?.list
                                                ?.first.itemPrice?.price ??
                                            0,
                                        (_viewModel.subscriptionResponse?.list
                                                    ?.first.itemPrice?.price ??
                                                0)
                                            .toString(),
                                        "Yearly Subscription renew after one year from the date of purchase",
                                        "US",
                                        SubscriptionPeriod.fromMap(
                                          {"periodUnit": 1, "numberOfUnits": 1},
                                        )),
                                    customer: customer)
                                : await Chargebee.purchaseStoreProduct(
                                    Product(
                                        Platform.isAndroid
                                            ? "monthly"
                                            : "Monthly",
                                        _viewModel.subscriptionResponse?.list
                                                ?.last.itemPrice?.price ??
                                            0,
                                        (_viewModel.subscriptionResponse?.list
                                                    ?.last.itemPrice?.price ??
                                                0)
                                            .toString(),
                                        "Montly Subscription renew after one month from the date of purchase",
                                        "US",
                                        SubscriptionPeriod.fromMap(
                                          {"periodUnit": 1, "numberOfUnits": 1},
                                        )),
                                    customer: customer);
                            print("subscription id : ${result.subscriptionId}");
                            print("subscription status : ${result.status}");
                            SharedPreferenceService.clearAll();

                            AppConstants.token = "";
                            AppConstants.isSubscribed = false;

                            AppConstants.userId = "";
                            context
                                .pushReplacementNamed(AppRoute.loginView.name);
                            await _viewModel.isSubscribed(context);
                          } on PlatformException catch (e) {
                            print(
                                'Error Message: ${e.message}, Error Details: ${e.details}, Error Code: ${e.code}');
                          }
                          isSubscribeLoading = false;
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          margin: EdgeInsets.symmetric(horizontal: 32),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFF0D6386),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: isSubscribeLoading
                                ? CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    val == 1
                                        ? "Start Free Trial"
                                        : "Start Free Trial",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                      gapH16,
                      Text(
                        "What’s Included:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      gapH4,
                      Image.asset(
                        "assets/images/subheading.png",
                        height: 100,
                      ),
                      gapH16,
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 16),
                      //   child: InkWell(
                      //     onTap: () {
                      //       launchUrl(Uri.parse(
                      //           "https://thegodfreymethod.com/pages/terms-of-use-eula"));
                      //     },
                      //     child: Text(
                      //       val == 1
                      //           ? "By continuing, you agree to our terms and conditions. At the end of the 7 day trial period, your first payment will be processed and automatically renewed every year. Cancel anytime.:"
                      //           : "By continuing, you agree to our terms and conditions. At the end of the 3 day trial period, your first payment will be processed and automatically renewed every month. Cancel anytime.",
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 10,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "By continuing, you agree to our ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "Terms and Conditions",
                                style: TextStyle(
                                    color: Color(0xFF0D6386),
                                    decoration: TextDecoration.underline,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl(Uri.parse(
                                        "https://thegodfreymethod.com/pages/terms-conditions"));
                                  },
                              ),
                              TextSpan(
                                text: " and ",
                                style: TextStyle(
                                    // color: primaryColor,

                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                    color: Color(0xFF0D6386),
                                    decoration: TextDecoration.underline,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl(Uri.parse(
                                        "https://thegodfreymethod.com/pages/privacypolicy"));
                                  },
                              ),
                              // TextSpan(
                              //   text: ". At the end of the ",
                              //   style: TextStyle(
                              //       color: Colors.white,
                              //       fontSize: 10,
                              //       fontWeight: FontWeight.bold),
                              // ),
                              // val == 1
                              //     ? TextSpan(
                              //         text: "7 day trial period",
                              //         style: TextStyle(
                              //             color: Colors.white,
                              //             fontSize: 10,
                              //             fontWeight: FontWeight.bold),
                              //       )
                              //     : TextSpan(
                              //         text: "3 day trial period",
                              //         style: TextStyle(
                              //             color: Colors.white,
                              //             fontSize: 10,
                              //             fontWeight: FontWeight.bold),
                              //       ),
                              TextSpan(
                                text:
                                    " Your first payment will be processed and automatically renewed every ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              val == 1
                                  ? TextSpan(
                                      text: "year",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : TextSpan(
                                      text: "month",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                              TextSpan(
                                text: ". Cancel anytime.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),

                      gapH16,
                    ],
                  ),
                ),
                gapH32
              ],
            ),
          ),
          gapH16,
        ],
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
