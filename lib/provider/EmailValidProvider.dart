
import 'package:export_nepal/model/core/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:export_nepal/model/services/APICalls.dart';
class RegistrationProvider with ChangeNotifier {
  bool result = false;
  bool loading = false;
  Register? register;

  isValid(context, String email) async {
    var api = APICalls();
    loading = true;
    result = await api.isEmailValid(context, email);
    print("email Available "+result.toString());
    loading = false;

    notifyListeners();
  }

  registerUser(context, String fName, String lName,
      String email, String password) async {
    var api = APICalls();
    loading = true;
    register = await api.registerUser(context, fName, lName, email, password);
    loading = false;
  }

}