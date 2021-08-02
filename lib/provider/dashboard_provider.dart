import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/Product/product.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/repositories/dashboard_repository.dart';
import 'package:flutter/cupertino.dart';

class DashboardProvider extends ChangeNotifier {
  DashboardRepository? _registrationRepository;

  DashboardProvider() {
    _registrationRepository = DashboardRepository();
  }

  Future<Either<Glitch, Product>> getNewProducts() async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, dynamic> response =
            await _registrationRepository!.getNewproducts();
        Product product = Product.fromJson(response.right);
        if (response.isLeft) {
          return Left(response.left);
        } else {
          return Right(product);
        }
      } else {
        return Left(Glitch(message: "Internal Error"));
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }
}
