import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/affiliate_program.dart';
import 'package:export_nepal/model/core/manuals.dart';
import 'package:export_nepal/model/core/payment_methods.dart';
import 'package:export_nepal/model/core/privacy_policy.dart';
import 'package:export_nepal/model/core/register.dart';
import 'package:export_nepal/model/core/return_policy.dart';
import 'package:export_nepal/model/core/shipping_policy.dart';
import 'package:export_nepal/model/core/team.dart';
import 'package:export_nepal/model/core/terms_of_use.dart';
import 'package:export_nepal/utils/preference_utils.dart';
import 'package:http/http.dart' as http;

class APICalls {
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
      final url = Uri.parse(baseUrl + "customers/isEmailAvailable");
      Map<String, dynamic> data = {
        "customerEmail": "$email",
      };
      final response = await http.post(url,
          headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          },
          body: jsonEncode(data));
      if (response.statusCode == 200) {
        result = response.body as bool;
      } else {
        result = false;
      }
    } on Exception catch (e) {
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
      if (response.statusCode == 200) {
        result = Register.fromJson(response.body);
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<String?> loginUser(context, String email, String pass) async {
    String? result;
    try {
      final url = Uri.parse(baseUrl + "integration/customer/token");
      Map<String, dynamic> data = {
        "username": "$email",
        "password": "$pass",
      };
      var response = await http.post(url, body: jsonEncode(data));
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = response.body;
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      print("error");
      log(e.toString());
      result = null;
    }
    return result;
  }

// Fetch cms page by id
  Future<Aboutus?> aboutUs() async {
    Aboutus? result;
    try {
      print(PreferenceUtils.getString(PreferenceUtils.TOKEN));
      final url = Uri.parse(baseUrl + "efn/page/identifier/about-us");
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Aboutus.fromJson(json.decode(response.body));
        print(result.content);
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<Manuals?> manuals(context) async {
    Manuals? result;
    try {
      final url = Uri.parse(baseUrl + "efn/manual");
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Manuals.fromJson(json.decode(response.body));
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<Privacy_policy?> privacyPolicy(context) async {
    Privacy_policy? result;
    try {
      final url = Uri.parse(baseUrl + "cmsPage/48");
      var response = await http.get(url, headers: {
        "Authorization":
            "Bearer " + PreferenceUtils.getString(PreferenceUtils.TOKEN)
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Privacy_policy.fromJson(json.decode(response.body));
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<Shipping_policy?> shippingPolicy() async {
    Shipping_policy? result;
    try {
      final url = Uri.parse(baseUrl + "efn/page/identifier/shipping-policy");
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Shipping_policy.fromJson(json.decode(response.body));
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<Team?> team(context) async {
    Team? result;
    try {
      final url = Uri.parse(baseUrl + "efn/page/identifier/team");
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Team.fromJson(json.decode(response.body));
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<Terms_of_use?> termsOfUse() async {
    Terms_of_use? result;
    try {
      final url = Uri.parse(baseUrl + "efn/page/identifier/terms-of-use");
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Terms_of_use.fromJson(json.decode(response.body));
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<Return_policy?> returnPolicy() async {
    Return_policy? result;
    try {
      final url = Uri.parse(baseUrl + "efn/page/identifier/return-policy");
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Return_policy.fromJson(json.decode(response.body));
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<Payment_methods?> paymentMethods(context) async {
    Payment_methods? result;
    try {
      final url = Uri.parse(baseUrl + "efn/page/identifier/payment-methods");
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Payment_methods.fromJson(json.decode(response.body));
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }

  Future<Affiliate_program?> affiliatePrograms() async {
    Affiliate_program? result;
    try {
      final url = Uri.parse(baseUrl + "efn/page/identifier/payment-methods");
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        result = Affiliate_program.fromJson(json.decode(response.body));
        print(result.toString());
      } else {
        result = null;
      }
    } on Exception catch (e) {
      log(e.toString());
      result = null;
    }
    return result;
  }
}
