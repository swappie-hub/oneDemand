import 'package:flutter/foundation.dart';

abstract class BaseViewModel<T> extends ChangeNotifier {
  late T? view;
  bool loading = false;
  String? _errorMessage;
  bool disposed = false;

  void attachView(T view) {
    this.view = view;
    disposed = false;
  }

  void toggleLoading() {
    loading = !loading;
    updateView();
  }

  String? get errorMessage => _errorMessage;

  set errorMessage(String? value) {
    _errorMessage = value;
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
