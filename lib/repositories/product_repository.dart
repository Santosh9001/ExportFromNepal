
import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/products.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class ProductRepository {

  Future<Either<Glitch, Products>> getCategoryProducts(String id) async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.categories)+"$id/products");
    try {
      Products products = Products.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(products);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }
}
