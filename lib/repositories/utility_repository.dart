import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/countries.dart';
import 'package:export_nepal/model/core/currencies.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';

class UtilityRepository{
  Future<Either<Glitch,Countries>> fetchCountries() async {
     Either<Glitch, dynamic> response =
        await HttpClient.instance.get(APIPathHelper.getValue(APIPath.countries));
    try {
      Countries countries = Countries.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(countries);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

Future<Either<Glitch,Currencies>> fetchCurrencies() async {
     Either<Glitch, dynamic> response =
        await HttpClient.instance.get(APIPathHelper.getValue(APIPath.countries));
    try {
      Currencies currencies = Currencies.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(currencies);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }  
  
}