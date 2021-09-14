import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/countries.dart';
import 'package:export_nepal/model/core/currencies.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/utility_repository.dart';
import 'package:flutter/material.dart';

class UtilityProvider extends ChangeNotifier {
  UtilityRepository? _utilityRepository;

  UtilityProvider() {
    _utilityRepository = UtilityRepository();
  }
  ApiResponse _countryResponse = ApiResponse.loading("Loading");
  ApiResponse _currencyResponse = ApiResponse.loading("Loading");

  ApiResponse get countryResponse {
    return _countryResponse;
  }

  ApiResponse get currencyResponse {
    return _currencyResponse;
  }

  Future<ApiResponse> invokeCountries() async {
    try {
      if (_utilityRepository != null) {
        Either<Glitch, Countries> response =
            await _utilityRepository!.fetchCountries();
        if (response.isLeft) {
          _countryResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _countryResponse = ApiResponse.completed(response.right);
        }
      } else {
        _countryResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _countryResponse = ApiResponse.error(e.toString());
      _countryResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _countryResponse;
  }

  Future<ApiResponse> invokeCurrencies() async {
    try {
      if (_utilityRepository != null) {
        Either<Glitch, Currencies> response =
            await _utilityRepository!.fetchCurrencies();
        if (response.isLeft) {
          _currencyResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _currencyResponse = ApiResponse.completed(response.right);
        }
      } else {
        _currencyResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _currencyResponse = ApiResponse.error(e.toString());
      _currencyResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _currencyResponse;
  }
}
