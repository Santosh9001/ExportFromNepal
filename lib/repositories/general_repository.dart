import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/affiliate_program.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';
import 'package:export_nepal/ui/screens/general/AboutUs.dart';

class GeneralRepository {
  Future<Either<Glitch, Aboutus>> getAboutUs() async {
    Either<Glitch, dynamic> response =
        await HttpClient.instance.get(APIPathHelper.getValue(APIPath.about_us));
    try {
      Aboutus aboutus = Aboutus.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(aboutus);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Affiliate_program>> getAffiliatePrograms() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.affiliate_programs));
        try {
      Affiliate_program affiliate_program = Affiliate_program.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(affiliate_program);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }
}
