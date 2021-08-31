import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/model/core/home_content.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class DashboardRepository {
  Future<Either<Glitch, Home_content>> getHomeContent() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.home_content));
    try {
      Home_content homeContent = Home_content.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(homeContent);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Product>> getNewproducts() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.new_products) + "?pageSize=10");
    try {
      Product product = Product.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(product);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Product>> getBestSelling() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.best_selling) + "?pageSize=10");
    try {
      Product product = Product.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(product);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Product>> getMostViewed() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.most_viewed) + "?pageSize=10");
    try {
      Product product = Product.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(product);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Product>> getJustForYou() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.just_for_you) + "?pageSize=20");
    try {
      Product product = Product.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(product);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }
}
