import 'package:connectivity/connectivity.dart';

Future<int> checkInternetConnection() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
    return 1;
  } else {
    return 0;
  }
}
