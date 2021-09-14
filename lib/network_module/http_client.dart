import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:export_nepal/model/glitch/NoInternetGlitch.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_base.dart';
import 'package:export_nepal/network_module/api_exceptions.dart';
import 'package:export_nepal/utils/preference_utils.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  static final HttpClient _singleton = HttpClient();

  static HttpClient get instance => _singleton;

  @Deprecated('migration')
  Future<dynamic> fetchData(String url, {Map<String, String>? params}) async {
    var responseJson;

    var uri = APIBase.baseURL +
        url +
        ((params != null) ? this.queryParameters(params) : "");
    var header = {HttpHeaders.contentTypeHeader: 'application/json'};
    try {
      final response = await http.get(Uri.parse(url), headers: header);
      print(response.body.toString());
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<Either<Glitch, dynamic>> get(String url,
      {Map<String, String>? params}) async {
    var responseJson;

    var uri = APIBase.baseURL +
        url +
        ((params != null) ? this.queryParameters(params) : "");
    print(uri.toString());
    var header = {HttpHeaders.contentTypeHeader: 'application/json'};
    try {
      final response = await http.get(Uri.parse(uri), headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      return Left(NoInternetGlitch());
    } on BadRequestException catch (e) {
      return Left(Glitch(message: e.toString()));
    } on UnauthorisedException catch (e) {
      return Left(Glitch(message: e.toString()));
    }
    return Right(responseJson);
  }

  Future<Either<Glitch, dynamic>> getWithToken(String url,
      {Map<String, String>? params}) async {
    var responseJson;
    var token = PreferenceUtils.getString(PreferenceUtils.TOKEN);

    var uri = APIBase.baseURL +
        url +
        ((params != null) ? this.queryParameters(params) : "");
    print(uri.toString());
    var header = {
      HttpHeaders.contentTypeHeader: 'application/json',
      'Authorization': 'Bearer $token'
    };
    try {
      final response = await http.get(Uri.parse(uri), headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      return Left(NoInternetGlitch());
    } on BadRequestException catch (e) {
      return Left(Glitch(message: e.toString()));
    } on UnauthorisedException catch (e) {
      return Left(Glitch(message: e.toString()));
    }
    return Right(responseJson);
  }

  String queryParameters(Map<String, String>? params) {
    if (params != null) {
      final jsonString = Uri(queryParameters: params);
      return '?${jsonString.query}';
    }
    return '';
  }

  Future<Either<Glitch, dynamic>> post(String url, dynamic body) async {
    var responseJson;
    var header = {HttpHeaders.contentTypeHeader: 'application/json'};
    try {
      final response = await http.post(Uri.parse(APIBase.baseURL + url),
          body: jsonEncode(body), headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      return Left(NoInternetGlitch());
    } on BadRequestException catch (e) {
      return Left(Glitch(message: e.toString()));
    } on UnauthorisedException catch (e) {
      return Left(Glitch(message: e.toString()));
    }
    return Right(responseJson);
  }

  Future<Either<Glitch, dynamic>> put(String url, dynamic body) async {
    var responseJson;
    var token = PreferenceUtils.getString(PreferenceUtils.TOKEN);
    var header = {
      HttpHeaders.contentTypeHeader: 'application/json',
      'Authorization': 'Bearer $token'
    };
    try {
      final response = await http.put(Uri.parse(APIBase.baseURL + url),
          body: jsonEncode(body), headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      return Left(NoInternetGlitch());
    } on BadRequestException catch (e) {
      return Left(Glitch(message: e.toString()));
    } on UnauthorisedException catch (e) {
      return Left(Glitch(message: e.toString()));
    }
    return Right(responseJson);
  }

  Future<Either<Glitch, dynamic>> putUrlOnly(String url) async {
    var responseJson;
    var token = PreferenceUtils.getString(PreferenceUtils.TOKEN);
    var header = {
      HttpHeaders.contentTypeHeader: 'application/json',
      'Authorization': 'Bearer $token'
    };
    try {
      final response =
          await http.put(Uri.parse(APIBase.baseURL + url), headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      return Left(NoInternetGlitch());
    } on BadRequestException catch (e) {
      return Left(Glitch(message: e.toString()));
    } on UnauthorisedException catch (e) {
      return Left(Glitch(message: e.toString()));
    }
    return Right(responseJson);
  }

  @Deprecated('migration')
  Future<dynamic> postData(String url, dynamic body) async {
    var responseJson;
    var header = {HttpHeaders.contentTypeHeader: 'application/json'};
    try {
      final response = await http.post(Uri.parse(APIBase.baseURL + url),
          body: jsonEncode(body), headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } on BadRequestException catch (e) {
      throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        // return response.body.toString();
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
