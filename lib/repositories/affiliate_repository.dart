import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/affiliate_groups.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class AffiliateRepository {
  Future<Either<Glitch, Affiliate_groups>> getAffiliateGroups() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.affiliate_groups));
    try {
      Affiliate_groups affiliate_groups =
          Affiliate_groups.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(affiliate_groups);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }
}
