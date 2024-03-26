import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ondemand/utils/colors.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/signup/signup_view_model.dart';
import 'package:ondemand/view/screens/subscribe/subscription_view_model.dart';

class SubscriptionView extends ConsumerStatefulWidget {
  const SubscriptionView({super.key});

  @override
  ConsumerState<SubscriptionView> createState() => _SubscriptionViewState();
}

class _SubscriptionViewState extends ConsumerState<SubscriptionView>
    with BaseScreenView {
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
        // centerTitle: true,
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
                        "\$${val == 2 ? priceForMonthly : priceForYearly}" +
                            " / month",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        val == 2
                            ? "billed monthly"
                            : "\$" + "${newPrice / 100} billed annually",
                        style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      gapH8,
                      InkWell(
                        onTap: () {
                          navigateToScreen(AppRoute.bottomNavigationView);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          margin: EdgeInsets.symmetric(horizontal: 32),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFF0D6386),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              "START FREE TRIAL NOW",
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
                      gapH16
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
