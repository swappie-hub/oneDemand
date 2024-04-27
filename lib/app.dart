import 'package:flutter/material.dart';
import 'package:ondemand/domain/providers/router_provider.dart';
import 'package:ondemand/domain/providers/theme_provider.dart';
import 'package:ondemand/utils/utils.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    final themeManager = ref.watch(themeProvider);

    return MediaQuery(
      data: MediaQuery.of(context)
          .copyWith(textScaler: const TextScaler.linear(1.0)),
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routeInformationParser: goRouter.routeInformationParser,
            routerDelegate: goRouter.routerDelegate,
            routeInformationProvider: goRouter.routeInformationProvider,
            theme: AppThemes.lightTheme,
            builder: (context, child) {
              ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
                return Container();
              };

              return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1.0)),
                child: child!,
              );
            },
            // darkTheme: AppThemes.darkTheme,
            themeMode: themeManager.currentTheme,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
