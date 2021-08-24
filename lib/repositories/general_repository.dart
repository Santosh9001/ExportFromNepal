import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/affiliate_program.dart';
import 'package:export_nepal/model/core/contact.dart';
import 'package:export_nepal/model/core/manuals.dart';
import 'package:export_nepal/model/core/return_policy.dart';
import 'package:export_nepal/model/core/shipping_policy.dart';
import 'package:export_nepal/model/core/terms_of_use.dart';
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

  Future<Either<Glitch, Affiliate_program>> getAffiliatePrograms() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.affiliate_programs));
        try {
      Affiliate_program affiliate_program = Affiliate_program.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(affiliate_program);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Contact>> getContact() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.contact));
        try {
      Contact contact = Contact.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(contact);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Return_policy>> getReturnPolicy() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.return_policy));
        try {
      Return_policy return_policy = Return_policy.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(return_policy);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Shipping_policy>> getShippingPolicy() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.shipping_policy));
        try {
      Shipping_policy shipping_policy = Shipping_policy.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(shipping_policy);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Terms_of_use>> getTermsOfUse() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.shipping_policy));
        try {
      Terms_of_use terms_of_use = Terms_of_use.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(terms_of_use);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Manuals>> getManuals() async {
    Either<Glitch, dynamic> response = await HttpClient.instance
        .get(APIPathHelper.getValue(APIPath.manuals));
        try {
      Manuals manuals = Manuals.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(manuals);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }
}
