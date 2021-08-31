import 'package:either_dart/either.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/repositories/RegistrationRepository.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  bool loading = false;
  String? loginToken;
  RegistrationRepository? _registrationRepository;

  LoginProvider() {
    _registrationRepository = RegistrationRepository();
  }

  Future<Either<Glitch, String>> loginSocial(String identifier, String type,
      String firstName, String lastName, String email) async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, dynamic> response = await _registrationRepository!
            .loginSocial(identifier, type, firstName, lastName, email);
        if (response.isLeft) {
          return Left(response.left);
        } else {
          return Right(response.right);
        }
      } else {
        return Left(Glitch(message: "Internal Error"));
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, String>> login(String email, String password) async {
    try {
      if (_registrationRepository != null) {
        Either<Glitch, dynamic> response =
            await _registrationRepository!.loginUser(email, password);
        if (response.isLeft) {
          return Left(response.left);
        } else {
          return Right(response.right);
        }
      } else {
        return Left(Glitch(message: "Internal Error"));
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  // Future<String?> loginUser(String email, String password) async {
  //   try {
  //     if (_registrationRepository != null) {
  //       String response =
  //           await _registrationRepository!.loginUser(email, password);
  //       return response;
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     return null;
  //   }
  // }
}
