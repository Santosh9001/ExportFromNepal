import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/model/core/Product/models/product_details.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class ProductRepository {
  Future<Either<Glitch, Product>> getCategoryProducts(String id) async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.categories) + "$id/products");
    try {
      Product products = Product.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(products);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Product_details>> getProductBySku(String sku) async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.product_details) + "1231-1");
    try {
      Product_details products = Product_details.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(products);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Product>> getHomeProducts(
      String title, int page) async {
    Either<Glitch, dynamic> response = await HttpClient.instance.get(
        APIPathHelper.getValue(getApiPath(title.toLowerCase())) +
            "?pageSize=100&currentPage=$page");
    try {
      Product products = Product.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(products);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  getApiPath(String title) {
    if (title.contains("new")) {
      return APIPath.new_products;
    } else if (title.contains("best")) {
      return APIPath.best_selling;
    } else if (title.contains("most")) {
      return APIPath.most_viewed;
    }
  }

  /*Future<Either<Glitch, Product_details>> getProductBySku(String sku) async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.product_details) + "1231-1");
    try {
      /*Map<String, dynamic> value = response.right;
      Map<String, dynamic> configlinks = value["product"]["configurable_options_link"];
      List<dynamic> lists = configlinks.keys.toList();
      List<dynamic> datas = configlinks.values.toList();
      List<dynamic> colors = [];
      List<dynamic> sizes = [];
      for (dynamic dd in datas) {
        if(colors.where((element) => element["id"] == dd["color"]["id"]).isEmpty)
          colors.add(dd["color"]);
        if(sizes.where((element) => element["id"] == dd["size"]["id"]).isEmpty)
          sizes.add(dd["size"]);
      }*/

      Product_details products = Product_details.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(products);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }*/
}
