import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/aboutus.dart';
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
}
