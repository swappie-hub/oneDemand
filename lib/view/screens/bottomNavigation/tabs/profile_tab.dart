import 'package:flutter/material.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/login/login_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

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
    super.initState();

    _viewModel = ref.read(authViewModel);
    _viewModel.attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(authViewModel);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            centerTitle: false,
            backgroundColor: kBlack,
            leadingWidth: 200,
            leading: Padding(
                padding: const EdgeInsets.only(left: 16, top: 14),
                child: Text(
                  "My Account",
                  style: TextStyle(color: Colors.white, fontFamily: 'Good'),
                )),
            actions: [
              InkWell(
                onTap: () {
                  navigateToScreen(AppRoute.searchVideoView);
                },
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              gapW16
              // Padding(
              //   padding: const EdgeInsets.only(left: 16, right: 16),
              //   child: Icon(
              //     Icons.notifications,
              //     color: Colors.white,
              //   ),
              // )
            ],
          )),
      backgroundColor: Color(0xFF171718),
      body: Column(
        children: [
          // Container(
          //   padding: EdgeInsets.symmetric(vertical: 16),
          //   decoration: BoxDecoration(
          //       color: Color(0xFF27272A),
          //       border: Border.symmetric(
          //           horizontal: BorderSide(color: Color(0xFF71717A))
          //           //  Border.all(color: Color(0xFF71717A)

          //           )),
          //   child: Center(
          //       child: Text(
          //     "MY ACCOUNT",
          //     style: TextStyle(
          //         fontFamily: "Good",
          //         color: Color(0xFF3CB4E4),
          //         fontWeight: FontWeight.w700,
          //         fontSize: 18),
          //   )),
          // ),
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
                        color: Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(_userDetailService
                                        .userDetailResponse?.image !=
                                    null
                                ? _userDetailService
                                        .userDetailResponse?.image ??
                                    ""
                                : "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
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
                    "Account",
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
              // navigateToScreen(AppRoute.subscriptionView);
              launchUrl(
                  Uri.parse("https://thegodfreymethod.chargebeeportal.com"));
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
              launchUrl(Uri.parse(
                  "https://thegodfreymethod.com/pages/privacypolicy"));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Transform.flip(
                    flipY: true,
                    flipX: true,
                    child: Icon(
                      Icons.policy_outlined,
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                  gapW8,
                  Text(
                    "Privacy Policy",
                    style: TextStyle(color: Color(0xFfC4C4C4), fontSize: 16),
                  )
                ],
              ),
            ),
          ),
       AppConstants.userType == "subuser" ?SizedBox.shrink():     Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),

         AppConstants.userType == "subuser" ?SizedBox.shrink():    InkWell(
            onTap: () {
              launchUrl(Uri.parse(
                  "https://thegodfreymethod.com/pages/terms-conditions"));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Transform.flip(
                    flipY: true,
                    flipX: true,
                    child: Icon(
                      Icons.shield_outlined,
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                  gapW8,
                  Text(
                    "Terms and Conditions",
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
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {}
}
