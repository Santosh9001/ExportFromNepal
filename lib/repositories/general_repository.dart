import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/affiliate_program.dart';
import 'package:export_nepal/model/core/cms_page.dart';
import 'package:export_nepal/model/core/contact.dart';
import 'package:export_nepal/model/core/manuals.dart';
import 'package:export_nepal/model/core/return_policy.dart';
import 'package:export_nepal/model/core/shipping_policy.dart';
import 'package:export_nepal/model/core/terms_of_use.dart';
import 'package:export_nepal/model/core/user_blogs.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/http_client.dart';
import 'package:export_nepal/ui/screens/general/AboutUs.dart';

class GeneralRepository {
  Future<Either<Glitch, Cms_page>> getCmsPage(String path) async {
    Either<Glitch, dynamic> response = await HttpClient.instance.get(path);
    try {
      Cms_page aboutus = Cms_page.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(aboutus);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Contact>> getContact() async {
    Either<Glitch, dynamic> response =
        await HttpClient.instance.get(APIPathHelper.getValue(APIPath.contact));
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

  Future<Either<Glitch, User_blogs>> getBlogs() async {
    Either<Glitch, dynamic> response =
        await HttpClient.instance.get(APIPathHelper.getValue(APIPath.blogs));
    try {
      User_blogs blogs = User_blogs.fromJson(response.right);
      if (response.isLeft) {
        return Left(response.left);
      } else {
        return Right(blogs);
      }
    } catch (e) {
      return Left(Glitch(message: e.toString()));
    }
  }

  Future<Either<Glitch, Manuals>> getManuals() async {
    Either<Glitch, dynamic> response =
        await HttpClient.instance.get(APIPathHelper.getValue(APIPath.manuals));
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
