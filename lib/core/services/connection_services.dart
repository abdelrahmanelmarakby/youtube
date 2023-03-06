import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectionServices {
  static final ConnectionServices _singleton = ConnectionServices._internal();
  ConnectionServices._internal();

  static ConnectionServices getInstance() => _singleton;

  bool hasConnection = false;

  StreamController connectionChangeController = StreamController();

  final Connectivity _connectivity = Connectivity();
  void initialize() {
    _connectivity.onConnectivityChanged.listen(_connectionChange);
  }

  void _connectionChange(ConnectivityResult result) {
    _hasInternetInternetConnection();
  }

  Stream get connectionChange => connectionChangeController.stream;
  Future<bool> _hasInternetInternetConnection() async {
    bool previousConnection = hasConnection;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // this is the different
      if (await InternetConnectionChecker().hasConnection) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } else {
      hasConnection = false;
    }

    if (previousConnection != hasConnection) {
      connectionChangeController.add(hasConnection);
    }
    return hasConnection;
  }
}
