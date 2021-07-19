import 'package:export_nepal/model/core/register.dart';
import 'package:export_nepal/network_module/api_exceptions.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/RegistrationRepository.dart';
import 'package:export_nepal/utils/validation_item.dart';
import 'package:export_nepal/utils/validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:export_nepal/model/services/APICalls.dart';

class RegistrationProvider with ChangeNotifier {
  RegistrationRepository? _registrationRepository;

  ApiResponse<bool>? _response;

  RegistrationProvider() {
    _registrationRepository = RegistrationRepository();
  }

  Future<bool> checkValid(String email) async {
    _response = ApiResponse.loading('Loading');
    notifyListeners();

    try {
      if (_registrationRepository != null) {
        bool isValid = await _registrationRepository!.isEmailvalid(email);
        return isValid;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<Register?> registerUser(
      String email, String firstName, String lastName, String password) async {
    try {
      if (_registrationRepository != null) {
        Register response = await _registrationRepository!
            .registerUser(email, firstName, lastName, password);
        return response;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  ApiResponse<bool>? getResponse() => _response;
}
