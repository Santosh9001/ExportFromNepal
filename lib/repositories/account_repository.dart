import 'package:either_dart/either.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class AccountRepository {
  Future<Either<Glitch, dynamic>> updatePassword(
      String currentPass, String newPass) async {
    Map<String, dynamic> data = {
      "currentPassword": "$currentPass",
      "newPassword": "$newPass"
    };
    Either<Glitch, dynamic> response = await HttpClient.instance
        .put(APIPathHelper.getValue(APIPath.updatePassword), data);
    return response;
  }

  Future<Either<Glitch, dynamic>> sendEmailVerification(String email) async {
    Either<Glitch, dynamic> response = await HttpClient.instance.putUrlOnly(
        APIPathHelper.getValue(APIPath.sendEmailVerification) + "$email");
    return response;
  }
}
