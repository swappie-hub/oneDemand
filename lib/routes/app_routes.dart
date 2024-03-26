import 'package:ondemand/view/screens/accountDetails/account_details_view.dart';
import 'package:ondemand/view/screens/bottomNavigation/bottom_navigation_view.dart';
import 'package:ondemand/view/screens/login/login_view.dart';
import 'package:ondemand/view/screens/onboarding/onboarding_view.dart';
import 'package:ondemand/view/screens/onboarding/onboarding_view.dart';
import 'package:ondemand/view/screens/signup/signup_view.dart';
import 'package:ondemand/view/screens/splash/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'package:ondemand/view/screens/subscribe/subscription_view.dart';
import 'package:ondemand/view/screens/videoPage/video_page_view.dart';

enum AppRoute {
  splash,
  onboardingView,
  videoPageView,
  loginView,
  signupView,
  subscriptionView,
  bottomNavigationView,
  accountDetailsView
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/onboardingView',
    name: AppRoute.onboardingView.name,
    builder: (context, state) => const OnboardingView(),
  ),
  GoRoute(
    path: '/loginView',
    name: AppRoute.loginView.name,
    builder: (context, state) => const LoginView(),
  ),
  GoRoute(
    path: '/signupView',
    name: AppRoute.signupView.name,
    builder: (context, state) => const SignupView(),
  ),
  GoRoute(
    path: '/subscriptionView',
    name: AppRoute.subscriptionView.name,
    builder: (context, state) => const SubscriptionView(),
  ),
  GoRoute(
    path: '/bottomNavigationView',
    name: AppRoute.bottomNavigationView.name,
    builder: (context, state) => const BottomNavigationView(),
  ),
  GoRoute(
    path: '/accountDetailsView',
    name: AppRoute.accountDetailsView.name,
    builder: (context, state) => const AccountDetailsView(),
  ),
  GoRoute(
    path: '/videoPageView/:id',
    name: AppRoute.videoPageView.name,
    builder: (context, state) => VideoPageView(
      id: state.pathParameters['id'].toString(),
    ),
  ),
];
