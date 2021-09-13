import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/Product/models/product.dart';
import 'package:export_nepal/model/core/Product/models/product_details.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/product_repository.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  var _selectedSizeIndex = 0;
  var _selectedColorIndex = 0;
  var _itemQty = 1;

  var _page = 1;

  int get currentPage => _page;

  void setCurrentPage(int page) {
    this._page = page;
  }

  int get quantity => _itemQty;

  int get colorIndex => _selectedColorIndex;
  int get sizeIndex => _selectedSizeIndex;

  ProductRepository? _productRepository;

  ProductProvider() {
    _productRepository = ProductRepository();
  }

  ApiResponse _productResponse = ApiResponse.loading("Loading");
  ApiResponse _productDetailResponse = ApiResponse.loading("Loading");
  ApiResponse _homeProductResponse = ApiResponse.loading("Loading");

  ApiResponse get homeProductResponse {
    return _homeProductResponse;
  }

  ApiResponse get productResponse {
    return _productResponse;
  }

  ApiResponse get productDetailsResponse {
    return _productDetailResponse;
  }

  Future<ApiResponse> invokeProductDetails(String sku) async {
    try {
      if (_productRepository != null) {
        Either<Glitch, Product_details> response =
            await _productRepository!.getProductBySku(sku);
        if (response.isLeft) {
          _productDetailResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _productDetailResponse = ApiResponse.completed(response.right);
        }
      } else {
        _productDetailResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _productDetailResponse = ApiResponse.error(e.toString());
      _productDetailResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _productDetailResponse;
  }

  Future<ApiResponse> invokeHomeProducts(String title, int page) async {
    try {
      if (_productRepository != null) {
        Either<Glitch, Product> response =
            await _productRepository!.getHomeProducts(title, page);
        if (response.isLeft) {
          _homeProductResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _homeProductResponse = ApiResponse.completed(response.right);
        }
      } else {
        _homeProductResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _homeProductResponse = ApiResponse.error(e.toString());
      _homeProductResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _homeProductResponse;
  }

  Future<ApiResponse> invokeproductsByCategory(String id) async {
    try {
      if (_productRepository != null) {
        Either<Glitch, Product> response =
            await _productRepository!.getCategoryProducts(id);
        if (response.isLeft) {
          _productResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _productResponse = ApiResponse.completed(response.right);
          print(_productResponse.data);
        }
      } else {
        _productResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _productResponse = ApiResponse.error(e.toString());
      _productResponse.status = Status.ERROR;
    }
    notifyListeners();
    return _productResponse;
  }

  void setQuantity(int qty) {
    _itemQty += qty;
    notifyListeners();
  }

  void setCurrentColorFromIndex(index) {
    _selectedColorIndex = index;
    notifyListeners();
  }

  void setCurrentSizeFromIndex(index) {
    _selectedSizeIndex = index;
    notifyListeners();
  }

  List<String> sizeList = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
    "XXXL",
    "10cm",
    "40cm",
    "120cm"
  ];

  List<Widget> createSizes() {
    return new List<Widget>.generate(sizeList.length, (int index) {
      return new InkWell(
        onTap: () {
          setCurrentSizeFromIndex(index);
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: sizeIndex == index ? kColorPrimary : Colors.white),
          child: Text(
            sizeList[index],
            style: TextStyle(
                color: sizeIndex == index ? Colors.white : Colors.black),
          ),
        ),
      );
    });
  }

  List<Color> someList = [Colors.blue, Colors.red, Colors.green, Colors.purple];
  List<Widget> createColors() {
    return new List<Widget>.generate(someList.length, (int index) {
      return new InkWell(
        onTap: () {
          setCurrentColorFromIndex(index);
        },
        child: Container(
          margin: EdgeInsets.only(right: 5),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: someList[index]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: colorIndex == index
                ? Icon(
                    Icons.check,
                    size: 10.0,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    size: 10.0,
                    color: someList[index],
                  ),
          ),
        ),
      );
    });
  }

  void checkAndCreateCart() {}

  getClipRect(List<Media_gallery_entries>? items) {
    return new List<Widget>.generate(items!.length, (int index) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          "${items[index].file}",
          fit: BoxFit.cover,
        ),
      );
    });
  }
}
