import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:export_nepal/model/core/register.dart';
import 'package:http/http.dart' as http;

class APICalls{
  String baseUrl = "https://staging.exportfromnepal.com/rest/default/V1/";
  // Future<Either<Exception, String>> registerUser(String fName, String lName,
  //     String email, String password) async{
  //   try{
  //     final url = Uri.parse(baseUrl + "customers");
  //     var response = await http.post(url, body: {
  //       "customer": {
  //         "email": email,
  //         "firstname": fName,
  //         "lastname": lName
  //       },
  //       "password": password
  //     });
  //
  //     return Right(response.body);
  //   }on Exception catch(e){
  //     return(Left(e));
  //   }
  // }

  Future<bool> isEmailValid(context, String email) async {
    bool result;
    try {
      final url = Uri.parse(baseUrl+"customers/isEmailAvailable");
      Map<String, dynamic> data = {
          "customerEmail":"$email",
      };
      final response = await http.post(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data)
      );
      if (response.statusCode == 200) {
        result = response.body as bool;
      } else {
        result = false;
      }
    }on Exception catch (e) {
      log(e.toString());
      result = false;
    }
    return result;
  }

  Future<Register?> registerUser(context, String fName, String lName,
      String email, String password) async {
    Register? result;
    try {
      final url = Uri.parse(baseUrl + "customers");
      Map<String, dynamic> data = {
        "customer": {
          "email": "$email",
          "firstname": "$fName",
          "lastname": "$lName"
        },
        "password": "$password"
      };
      var response = await http.post(url, body: jsonEncode(data));
      print(response.statusCode);
      if(response.statusCode == 200) {
        result = Register.fromJson(response.body);
        print(result.toString());
      } else {
        result = null;
      }
    }on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }
}