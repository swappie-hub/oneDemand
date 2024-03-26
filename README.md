[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)
# sweetlifesaver

A boilerplate project created in flutter using RiverPod. Boilerplate supports both web and mobile.

## Getting Started

The Boilerplate contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project. By using boiler plate code as standard initializer, we can have same patterns in all the projects that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```


## Boilerplate Features:

* Splash
* Home
* Routing (GoRouter)
* Theme
* Dio (API Client)
* SharedPreference (Device Storage)
* Riverpod (State Management)
* Validation
* Code Generation (Freezed Annotation)
* User Notifications (FCM)
* Logging
* Dependency Injection
* Dark Theme Support
* Multilingual Support (Easy Localization)
* Responsive 




### Libraries & Tools Used

* [Go Router](https://pub.dev/packages/go_router)
* [Riverpod](https://pub.dev/packages/flutter_riverpod)
* [DartZ](https://pub.dev/packages/dartz)
* [Shared preferences](https://pub.dev/packages/shared_preferences)
* [Intl (Date Formatting)](https://pub.dev/packages/intl)
* [Path Provider](https://pub.dev/packages/path_provider)
* [Google Font](https://pub.dev/packages/google_fonts)
* [Dio](https://pub.dev/packages/dio)
* [ScreenUtil](https://pub.dev/packages/flutter_screenutil)
* [Easy Localization](https://pub.dev/packages/easy_localization)
* [Connectivity](https://pub.dev/packages/connectivity_plus)
* [Freezed](https://pub.dev/packages/freezed_annotation)
* [DotEnv](https://pub.dev/packages/flutter_dotenv)
* [Crash Analytics](https://pub.dev/packages/firebase_crashlytics)
* [FCM](https://pub.dev/packages/firebase_messaging)
* [Local Notification](https://pub.dev/packages/flutter_local_notifications)


### Folder Structure

Here is the folder structure we have been using in this project

```
lib/
|- core/
|- data/
|- domain/
|- helpers/
|- languages/
|- routes/
|- services/
|- utils/
|- view/
|- main_dev.dart
|- main_prod.dart
|- main_staging.dart
|- app.dart
|- environment.dart


```

### Routes

This file contains all the routes for our application, with web route support.

```dart
enum AppRoute { home, secondScreen }

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.home.name,
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: '/secondScreen',
    name: AppRoute.secondScreen.name,
    builder: (context, state) => const NewsListView(),
  ),
];
```

### Environment

This is the starting point of the application, where environments are configured on the basis of flavor :
 * Development => dev
 * Production => prod
 * Staging => staging

```dart

enum EnvType {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class Environment {
  static late Environment value;

  String? baseUrl;
  EnvType environmentType = EnvType.DEVELOPMENT;

  Environment() {
    value = this;
    _init();
  }

  void _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await FirebaseMessagingProvider.init();
    await EasyLocalization.ensureInitialized();
    await SharedPreferenceService.init();
    try {
      await dotenv.load();
    } catch (e) {
      Logger.write(e.toString());
    }
    runApp(ProviderScope(
      child: EasyLocalization(
          supportedLocales: const [
            Locale('en'),
            Locale('hi'),
          ],
          path: 'assets/languages',
          fallbackLocale: const Locale('en', 'US'),
          child: const MyApp()),
    ));
  }
}
```




### MyApp

This is the root widget of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    final goRouter = ref.watch(routerProvider);
    final themeManager = ref.watch(themeProvider);

    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      routeInformationProvider: goRouter.routeInformationProvider,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: themeManager.currentTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
```


### HELPERS

We have created 2 helpers:

1. Base Screen View (for Screen Widgets) => This abstract class helps us to define he function which depends on widget context, without passing the context to another class (ViewModels).
e.g : showDialogs, showSnackbars, navigation

2. Base View Model (for View Models)=> This class contants the core functionalities fro a ViewModel like : toggling loader, attaching&detaching widgets, safely notifying listners, etc.

```dart

mixin BaseScreenView on Widget {
  void showSnackbar(String message, {Color? color});
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params});
}
 



abstract class BaseViewModel<T> extends ChangeNotifier {
  late T? view;
  bool loading = true;
  String? errorMessage;
  bool disposed = false;
  
  void attachView(T view) {
    this.view = view;
    disposed = false;
  }

  void toggleLoading(bool on) {
    loading = on;
    updateView();
  }

  void setErrorMessage(String value) {
    errorMessage = value;
  }

  void detachView() {
    disposed = true;
    view = null;
  }

  void updateView() {
    if (!disposed) {
      notifyListeners();
    }
  }
}
```
