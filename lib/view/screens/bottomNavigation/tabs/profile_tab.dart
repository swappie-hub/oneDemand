import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ondemand/core/core.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/home_tab.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with BaseScreenView {
  final UserDetailService _userDetailService = getIt<UserDetailService>();

  @override
  Widget build(BuildContext context) {
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
          )
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
