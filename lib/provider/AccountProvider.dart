import 'package:either_dart/either.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/repositories/account_repository.dart';
import 'package:flutter/material.dart';

class AccountProvider extends ChangeNotifier {
  AccountRepository? _accountRepository;
  AccountProvider() {
    _accountRepository = AccountRepository();
  }

  Future<Either<Glitch, String>> updatePassword(
      String currentPass, String newPass) async {
    try {
      if (_accountRepository != null) {
        Either<Glitch, dynamic> response =
            await _accountRepository!.updatePassword(currentPass, newPass);
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

  Future<Either<Glitch, String>> sendEmailVerification(String email) async {
    try {
      if (_accountRepository != null) {
        Either<Glitch, dynamic> response =
            await _accountRepository!.sendEmailVerification(email);
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
}
