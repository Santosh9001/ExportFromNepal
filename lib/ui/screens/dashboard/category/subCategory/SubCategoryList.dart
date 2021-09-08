import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/CategoryProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'SubCategoryItemSmall.dart';

class SubCategoryList extends StatefulWidget {
  final String id;
  final String name;

  SubCategoryList(this.id, this.name);
  @override
  _SubCategoryState createState() => _SubCategoryState(id, name);
}

class _SubCategoryState extends State<SubCategoryList> {
  CategoryProvider? provider;
  Categories? _subCategories;
  ApiResponse? _subCategoryResponse;
  final String id;
  final String name;

  _SubCategoryState(this.id, this.name);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiResponse<dynamic>>(
      builder: (context, snapshot) {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 10),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              color: Colors.white,
              child: snapshot.connectionState == ConnectionState.done
                  ? (snapshot.hasError
                      ? Center(
                          child: Text('${snapshot.error} occured',
                              style: kTextStyleSmallPrimary),
                        )
                      : getWidgetValue(snapshot.data))
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
          ),
        );
      },
      future: invokeSubCategory(),
    );
  }

  getWidgetValue(data) {
    _subCategoryResponse = data;
    if (_subCategoryResponse != null) {
      _subCategories = _subCategoryResponse!.data as Categories;
      return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.8,
        ),
        itemCount: _subCategories!.data!.categoryItems!.length,
        itemBuilder: (BuildContext context, int index) {
          return SubCategoryItemSmall(_subCategories!.data!.categoryItems![index], name);
        },
      );
    }
  }

  Future<ApiResponse<dynamic>> invokeSubCategory() async {
    provider = Provider.of<CategoryProvider>(context, listen: false);
    await provider!.invokeSubcategory(id);
    return provider!.subCategoryResponse;
  }
}
