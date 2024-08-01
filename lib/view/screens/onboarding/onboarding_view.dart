import 'package:flutter/material.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:video_player/video_player.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> with BaseScreenView {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/onboardng_video.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
          _controller.setLooping(true);
          _controller.setVolume(0);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          _controller.value.isInitialized
              ? Center(
                  child: VideoPlayer(
                    _controller,
                  ),
                )
              : Container(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gapH48,
              Image.asset(
                "assets/images/logo_big.png",
                height: 100.h,
                width: 109.w,
              ),
              Image.asset(
                "assets/images/logo_long.png",
                height: 67.h,
                width: 270.w,
              ),
              Center(
                child: Image.asset(
                  "assets/images/elevate_text.png",
                  height: 55.h,
                  width: 220.w,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              InkWell(
                onTap: () {
                  navigateToScreen(AppRoute.loginView);
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 39.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        colors: [Color(0xFF033245), Color(0xFF51CBFC)]),
                  ),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              gapH20,
              InkWell(
                onTap: () {
                  navigateToScreen(AppRoute.signupView);
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  TextSpan(
                      text: "SIGN UP",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16))
                ])),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {}
}
