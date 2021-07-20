import 'package:export_nepal/model/services/APICalls.dart';
import 'package:export_nepal/repositories/RegistrationRepository.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  bool loading = false;
  String? loginToken;
  RegistrationRepository? _registrationRepository;

  LoginProvider() {
    _registrationRepository = RegistrationRepository();
  }

  Future<String?> loginUser(String email, String password) async {
    try {
      if (_registrationRepository != null) {
        String response =
            await _registrationRepository!.loginUser(email, password);
        return response;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
