import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/category_repository.dart';
import 'package:flutter/material.dart';

class InnerCategoryProvider extends ChangeNotifier {
  CategoryRepository? _categoryRepository;
  ApiResponse _subCategoryResponse = ApiResponse.loading("Loading");
  InnerCategoryProvider() {
    _categoryRepository = CategoryRepository();
  }

  ApiResponse get subCategoryResponse {
    return _subCategoryResponse;
  }

  Future<ApiResponse> invokeSubcategory(String id) async {
    try {
      if (_categoryRepository != null) {
        Either<Glitch, Categories> response =
            await _categoryRepository!.getSubCategory(id);
        if (response.isLeft) {
          _subCategoryResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _subCategoryResponse = ApiResponse.completed(response.right);
          print(_subCategoryResponse.data);
        }
      } else {
        _subCategoryResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _subCategoryResponse = ApiResponse.error(e.toString());
      _subCategoryResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _subCategoryResponse;
  }
}
