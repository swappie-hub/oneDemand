import 'package:ondemand/services/shared_preference_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = ChangeNotifierProvider.autoDispose<ThemeProvider>((ref) {
  return ThemeProvider();
});

class ThemeProvider extends ChangeNotifier {
  static const _kThemeModeKey = '__theme_mode__';
  ThemeMode currentThemeMode = ThemeMode.system;

  bool get isDarkMode => currentTheme == ThemeMode.dark;

  ThemeMode get currentTheme {
    final darkMode = SharedPreferenceService.getBool(_kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  void toggleThemeMode() {
    currentThemeMode = !isDarkMode ? ThemeMode.dark : ThemeMode.light;
    SharedPreferenceService.setBool(
      _kThemeModeKey,
      currentThemeMode == ThemeMode.dark,
    );
    notifyListeners();
  }
}
