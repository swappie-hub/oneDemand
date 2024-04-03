import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ondemand/core/core.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/home_tab.dart';
import 'package:ondemand/view/screens/login/login_view_model.dart';

class ProfileTab extends ConsumerStatefulWidget {
  const ProfileTab({super.key});

  @override
  ConsumerState<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends ConsumerState<ProfileTab> with BaseScreenView {
  final UserDetailService _userDetailService = getIt<UserDetailService>();
  late LoginViewModel _viewModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _viewModel = ref.read(authViewModel);
    _viewModel.attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(authViewModel);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40), child: CustomAppBar()),
      backgroundColor: Color(0xFF171718),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
                color: Color(0xFF27272A),
                border: Border.symmetric(
                    horizontal: BorderSide(color: Color(0xFF71717A))
                    //  Border.all(color: Color(0xFF71717A)

                    )),
            child: Center(
                child: Text(
              "MY ACCOUNT",
              style: TextStyle(
                  fontFamily: "Good",
                  color: Color(0xFF3CB4E4),
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            )),
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Color(0xFF27272A),

                //  Border.all(color: Color(0xFF71717A)
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
                  ),
                  gapH8,
                  Text(
                    ((_userDetailService.userDetailResponse?.firstname ?? "") +
                            " " +
                            (_userDetailService.userDetailResponse?.lastname ??
                                ""))
                        .toUpperCase(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF9E9E9E),
                        fontWeight: FontWeight.bold),
                  ),
                  gapH16,
                ],
              )),
          InkWell(
            onTap: () {
              navigateToScreen(AppRoute.accountDetailsView);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xFFD9D9D9),
                  ),
                  gapW8,
                  Text(
                    "Account Details",
                    style: TextStyle(color: Color(0xFfC4C4C4), fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
          InkWell(
            onTap: () {
              navigateToScreen(AppRoute.subscriptionView);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.video_collection_rounded,
                    color: Color(0xFFD9D9D9),
                  ),
                  gapW8,
                  Text(
                    "Manage Subscription",
                    style: TextStyle(color: Color(0xFfC4C4C4), fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
          InkWell(
            onTap: () {
              SharedPreferenceService.clearAll();
              AppConstants.token = "";
              AppConstants.userId = "";
              context.pushReplacementNamed(AppRoute.onboardingView.name);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Transform.flip(
                    flipY: true,
                    flipX: true,
                    child: Icon(
                      Icons.logout,
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                  gapW8,
                  Text(
                    "Logout",
                    style: TextStyle(color: Color(0xFfC4C4C4), fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    insetPadding: EdgeInsets.zero,
                    titlePadding: EdgeInsets.zero,
                    backgroundColor: Color(0xFF171718),
                    surfaceTintColor: Color(0xFF171718),
                    title: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delete account'.toUpperCase(),
                                style: TextStyle(
                                    fontFamily: "Good",
                                    color: Color(0xFF008BC3),
                                    fontSize: 16),
                              ),
                              InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: Icon(Icons.close))
                            ],
                          ),
                        ),
                        Container(
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFF27272A)),
                        )
                      ],
                    ),
                    content: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Are you sure you want to delete your account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          gapH8,
                          Text(
                            "All account data and history will be deleted and your subscription will no longer be accessible.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          gapH8,
                          TextButton(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                    color: Color(0xFF008BC3),
                                    borderRadius: BorderRadius.circular(9)),
                                child: Text(
                                  'NO Go Back'.toUpperCase(),
                                  style: TextStyle(
                                      fontFamily: "Good",
                                      color: Colors.white,
                                      fontSize: 15),
                                )),
                            onPressed: () {
                              Navigator.of(context).pop();
                              // navigateToScreen(AppRoute.accountDetailsView);

                              // Handle the submit action
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Delete'.toUpperCase(),
                              style: TextStyle(
                                  fontFamily: "Good",
                                  color: Color(0xFFA11E1E),
                                  fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    insetPadding: EdgeInsets.zero,
                                    titlePadding: EdgeInsets.zero,
                                    backgroundColor: Color(0xFF171718),
                                    surfaceTintColor: Color(0xFF171718),
                                    title: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Delete account'.toUpperCase(),
                                                style: TextStyle(
                                                    fontFamily: "Good",
                                                    color: Color(0xFF008BC3),
                                                    fontSize: 16),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    context.pop();
                                                  },
                                                  child: Icon(Icons.close))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 2,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF27272A)),
                                        )
                                      ],
                                    ),
                                    content: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Are you sure you want to proceed with deleting your account?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          gapH8,
                                          Text(
                                            "This action is not reversible and no refunds will be provided for active subscriptions.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          gapH8,
                                          TextButton(
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 8,
                                                    horizontal: 16),
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF008BC3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9)),
                                                child: Text(
                                                  'NO Go Back'.toUpperCase(),
                                                  style: TextStyle(
                                                      fontFamily: "Good",
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                )),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              // Handle the submit action
                                            },
                                          ),
                                          TextButton(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Text(
                                                'YES, I AM SURE.\nDELETE MY ACCOUNT'
                                                    .toUpperCase(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: "Good",
                                                    color: Color(0xFFA11E1E),
                                                    fontSize: 15),
                                              ),
                                            ),
                                            onPressed: () {
                                              _viewModel.deleteAccount(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[],
                  );
                },
              );

              // navigateToScreen(AppRoute.accountDetailsView);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.delete_outline,
                    color: Color(0xFFD9D9D9),
                  ),
                  gapW8,
                  Text(
                    "Delete Account",
                    style: TextStyle(color: Color(0xFfC4C4C4), fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
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
