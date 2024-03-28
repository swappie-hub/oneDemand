// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:ondemand/app.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/domain/providers/firebase_messaging_provider.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/utils/utils.dart';

enum EnvType {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class Environment {
  Environment() {
    // value = this;
    _init();
  }

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    // await EasyLocalization.ensureInitialized();
    // await Firebase.initializeApp();
    // await Firebase.initializeApp();
    // await FirebaseMessagingProvider.setupFirebaseConfig();
    // final String? token = await FirebaseMessaging.instance.getToken();
    // AppConstants.fcmToken = token ?? "";
    // print(AppConstants.fcmToken);

    // await FirebaseMessagingProvider.init();
    await SharedPreferenceService.init();

    try {
      setupServiceLocator();
      // await dotenv.load();
    } catch (e) {
      Logger.write(e.toString());
    }
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }
}
