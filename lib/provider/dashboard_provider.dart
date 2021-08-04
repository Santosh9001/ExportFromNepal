import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/dashboard_repository.dart';
import 'package:flutter/cupertino.dart';

class DashboardProvider extends ChangeNotifier {
  DashboardRepository? _registrationRepository;
  ApiResponse _newProductResponse = ApiResponse.loading("Loading");
  ApiResponse _bestSellingProductResponse = ApiResponse.loading("Loading");
  ApiResponse _mostViewedProductResponse = ApiResponse.loading("Loading");

  ApiResponse get newProductResponse {
    return _newProductResponse;
  }

  ApiResponse get bestSellingProductResponse {
    return _bestSellingProductResponse;
  }

  ApiResponse get mostViewedProductResponse {
    return _mostViewedProductResponse;
  }

  DashboardProvider() {
    _registrationRepository = DashboardRepository();
    getNewProducts();
    getBestSelling();
    getMostViewed();
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
}
