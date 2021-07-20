import 'package:export_nepal/model/core/register.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class RegistrationRepository {
  Future<bool> isEmailvalid(String email) async {
    Map<String, dynamic> data = {
      "customerEmail": "$email",
      "websiteId": 0,
    };
    final response = await HttpClient.instance
        .postData(APIPathHelper.getValue(APIPath.validate_email), data);
    print("Response - $response");
    return response;
  }

  Future<Register> registerUser(
      String email, String firstName, String lastName, String password) async {
    Map<String, dynamic> data = {
      "customer": {
        "email": "$email",
        "firstname": "$firstName",
        "lastname": "$lastName"
      },
      "password": "$password"
    };
    final response = await HttpClient.instance
        .postData(APIPathHelper.getValue(APIPath.register), data);
    print("Response - $response");
    return Register.fromJson(response);
  }

  Future<String> loginUser(String email, String password) async {
    Map<String, dynamic> data = {"username": "$email", "password": "$password"};
    final response = await HttpClient.instance
        .postData(APIPathHelper.getValue(APIPath.login), data);
    print("Response - $response");
    return response;
  }
}
