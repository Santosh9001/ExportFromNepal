import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/model/core/home_content.dart';
import 'package:export_nepal/model/core/logged_in_user.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/dashboard_repository.dart';
import 'package:export_nepal/utils/internet_check.dart';
import 'package:export_nepal/utils/preference_utils.dart';
import 'package:flutter/cupertino.dart';

class DashboardProvider extends ChangeNotifier {
  DashboardRepository? _registrationRepository;
  ApiResponse _newProductResponse = ApiResponse.loading("Loading");
  ApiResponse _bestSellingProductResponse = ApiResponse.loading("Loading");
  ApiResponse _mostViewedProductResponse = ApiResponse.loading("Loading");
  ApiResponse _justForYouResponse = ApiResponse.loading("Loading");
  ApiResponse _homeContentResponse = ApiResponse.loading("Loading");

  ApiResponse get homeContentResponse {
    return _homeContentResponse;
  }

  ApiResponse get newProductResponse {
    return _newProductResponse;
  }

  ApiResponse get bestSellingProductResponse {
    return _bestSellingProductResponse;
  }

  ApiResponse get mostViewedProductResponse {
    return _mostViewedProductResponse;
  }

  ApiResponse? get justForYourResponse {
    return _justForYouResponse;
  }

  DashboardProvider() {
    _registrationRepository = DashboardRepository();
    getNewProducts();
    getBestSelling();
    getMostViewed();
    getJustForYou();
    getHomeContent();
    var token = PreferenceUtils.getString(PreferenceUtils.TOKEN);
    if (token.isNotEmpty) {
      fetchLoggedInCustomerDetails();
    }
  }

  Future<void> fetchLoggedInCustomerDetails() async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, Logged_in_user> response =
            await _registrationRepository!.fetchLoggedInCustomer();
        if (response.isLeft) {
          _homeContentResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _homeContentResponse = ApiResponse.completed(response.right);
          var loggedInUser = _homeContentResponse.data as Logged_in_user;
          PreferenceUtils.putString(
              PreferenceUtils.USER, json.encode(loggedInUser));
        }
      } else {
        _homeContentResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _homeContentResponse = ApiResponse.error(e.toString());
      _homeContentResponse.status = Status.ERROR;
    }
  }

  Future<void> getHomeContent() async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, Home_content> response =
            await _registrationRepository!.getHomeContent();
        if (response.isLeft) {
          _homeContentResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _homeContentResponse = ApiResponse.completed(response.right);
        }
      } else {
        _homeContentResponse = ApiResponse.error("Internal Error");
      }
      notifyListeners();
    } catch (e) {
      _homeContentResponse = ApiResponse.error(e.toString());
      _homeContentResponse.status = Status.ERROR;

      notifyListeners();
    }
  }

  Future<void> getNewProducts() async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, Product> response =
            await _registrationRepository!.getNewproducts();
        if (response.isLeft) {
          _newProductResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _newProductResponse = ApiResponse.completed(response.right);
        }
      } else {
        _newProductResponse = ApiResponse.error("Internal Error");
      }
      notifyListeners();
    } catch (e) {
      _newProductResponse = ApiResponse.error(e.toString());
      _newProductResponse.status = Status.ERROR;

      notifyListeners();
    }
  }

  Future<void> getJustForYou() async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, Product> response =
            await _registrationRepository!.getJustForYou();
        if (response.isLeft) {
          _justForYouResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _justForYouResponse = ApiResponse.completed(response.right);
        }
      } else {
        _justForYouResponse = ApiResponse.error("Internal Error");
      }
      notifyListeners();
    } catch (e) {
      _justForYouResponse = ApiResponse.error(e.toString());
      _justForYouResponse.status = Status.ERROR;

      notifyListeners();
    }
  }

  Future<void> getBestSelling() async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, Product> response =
            await _registrationRepository!.getBestSelling();
        if (response.isLeft) {
          _bestSellingProductResponse =
              ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _bestSellingProductResponse = ApiResponse.completed(response.right);
        }
      } else {
        _bestSellingProductResponse = ApiResponse.error("Internal Error");
      }
      notifyListeners();
    } catch (e) {
      _bestSellingProductResponse = ApiResponse.error(e.toString());

      notifyListeners();
    }
  }

  Future<void> getMostViewed() async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, Product> response =
            await _registrationRepository!.getMostViewed();
        if (response.isLeft) {
          _mostViewedProductResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _mostViewedProductResponse = ApiResponse.completed(response.right);
        }
      } else {
        _mostViewedProductResponse = ApiResponse.error("Internal Error");
      }
      notifyListeners();
    } catch (e) {
      _mostViewedProductResponse = ApiResponse.error(e.toString());

      notifyListeners();
    }
  }

  getClipRect(Bannerslider? bannerslider) {
    var items = bannerslider!.items;
    return new List<Widget>.generate(items!.length, (int index) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          "${items[index].image}",
          fit: BoxFit.cover,
        ),
      );
    });
  }
}
