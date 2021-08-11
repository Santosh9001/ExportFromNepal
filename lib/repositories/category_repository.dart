import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class CategoryRepository {
  Future<Either<Glitch, Categories>> getCategories() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.categories));
    try {
      Categories categories = Categories.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(categories);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }
}
