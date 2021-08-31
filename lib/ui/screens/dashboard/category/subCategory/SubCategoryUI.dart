import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/CategoryProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/SubCategoryList.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubCategoryUI extends StatefulWidget {
  final Items item;

  SubCategoryUI(this.item);

  @override
  _SubCategoryUIState createState() => _SubCategoryUIState(item);
}

class _SubCategoryUIState extends State<SubCategoryUI>
    with SingleTickerProviderStateMixin {
  final Items item;

  _SubCategoryUIState(this.item);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  CategoryProvider? provider;
  Categories? _categories;
  ApiResponse? _categoryResponse;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
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
                    "${item.name}",
                    style: kTextStyleLargeBlue,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              snapshot.connectionState == ConnectionState.done
                  ? (snapshot.hasError
                      ? Center(
                          child: Text('${snapshot.error} occured',
                              style: kTextStyleSmallPrimary),
                        )
                      : getWidgetSubcategories(snapshot.data))
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            ],
          ),
        );
      },
      future: invokeSubCategories(item.id!),
    );
  }

  getWidgetSubcategories(data) {
    _categoryResponse = data;
    if (_categoryResponse != null) {
      _categories = _categoryResponse!.data as Categories;
      return List.generate(
          _categories!.items!.length,
          (index) => new SubCategoryList(_categories!.items![index].id!,
              _categories!.items![index].name!));
    }
  }

  Future<ApiResponse<dynamic>> invokeSubCategories(String id) async {
    provider = Provider.of<CategoryProvider>(context, listen: false);
    await provider!.invokeSubcategory(id);
    return provider!.categoryResponse;
  }
}
