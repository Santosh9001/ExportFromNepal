import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/CategoryProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryUI extends StatefulWidget {
  const CategoryUI({Key? key}) : super(key: key);

  @override
  _CategoryUIState createState() => _CategoryUIState();
}

class _CategoryUIState extends State<CategoryUI> {
  CategoryProvider? provider;
  Categories? _categories;
  ApiResponse? _categoryResponse;
  String defaultValue = "Loading....";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<CategoryProvider>(context, listen: true);
    if (provider != null) {      
      _categoryResponse = provider!.categoryResponse;
      if (_categoryResponse!.data! != null) {
        _categories = _categoryResponse!.data as Categories;
      }
    }
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Text(
                "Categories",
                style: kTextStyleLargeBlue,
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.8,
              ),
              itemCount: _categories != null ? _categories!.items!.length : 0,
              itemBuilder: (BuildContext context, int index) {
                return _categories != null
                    ? CategoryItemSmall(
                        _categories!.items![index],
                      )
                    : Text(
                        "$defaultValue",
                        style: kTextStyleSmallPrimary,
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
