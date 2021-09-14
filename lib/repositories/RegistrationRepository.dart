import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/logged_user.dart';
import 'package:export_nepal/model/core/register.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
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

  Future<Either<Glitch, Logged_user>> loginUser(
      String email, String password) async {
    Map<String, dynamic> data = {"username": "$email", "password": "$password"};
    Either<Glitch, dynamic> response = await HttpClient.instance
        .post(APIPathHelper.getValue(APIPath.login), data);
    try {
      Logged_user logged_user = Logged_user.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(logged_user);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Logged_user>> loginSocial(String identifier,
      String type, String firstName, String lastName, String email) async {
    Map<String, dynamic> data = {
      "identifier": "$identifier",
      "type": "$type",
      "firstName": "$firstName",
      "lastName": "$lastName",
      "email": "$email"
    };
    Either<Glitch, dynamic> response = await HttpClient.instance
        .post(APIPathHelper.getValue(APIPath.social_login), data);

    try {      
      if (response.isLeft) {
        return Left(response.left);
      } else {      
         Logged_user logged_user = Logged_user.fromJson(response.right); 
        return Right(logged_user);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }
}
