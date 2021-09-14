import 'package:either_dart/either.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class CartRepository {
  Future<Either<Glitch, dynamic>> createCart() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .post(APIPathHelper.getValue(APIPath.create_cart), null);
    return response;
  }

  Future<Either<Glitch, dynamic>> getCartItems() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .getWithToken(APIPathHelper.getValue(APIPath.create_cart));
    try {
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(response.right);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, dynamic>> applyCoupon(String code) async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .put(APIPathHelper.getValue(APIPath.create_cart), null);
    return response;
  }
}
