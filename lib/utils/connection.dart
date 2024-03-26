import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionUtils {
  static final _connectivity = Connectivity();
  static Future<bool> isNetworkConnected() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}
