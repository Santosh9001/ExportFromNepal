import 'package:dotted_border/dotted_border.dart';
import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/CategoryProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/SubCategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/SubCategoryList.dart';
import 'package:export_nepal/ui/screens/product/ProductList.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubCategoryUI extends StatefulWidget {
  final CategoryItems item;

  SubCategoryUI(this.item);

  @override
  _SubCategoryUIState createState() => _SubCategoryUIState(item);
}

class _SubCategoryUIState extends State<SubCategoryUI>
    with SingleTickerProviderStateMixin {
  final CategoryItems item;

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
  Categories? _subCategories;
  ApiResponse? _subCategoryResponse;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        return Scaffold(
          body: SafeArea(
              child: Container(
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
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    dashPattern: [6, 6, 6, 6],
                    padding: EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 30,
                        child: InkWell(
                          onTap: () {
                            item.productCount! > 0
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProductList(item.name!, item.id!)))
                                : showToast(
                                    context, "Currently the list is empty");
                          },
                          child: Center(
                            child: Text(
                              "View ${item.name} products",
                              style: kTextStyleBlueBold,
                            ),
                          ),
                        ),
                      ),
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
                    : LinearProgressIndicator(),
              ],
            ),
          )),
        );
      },
      future: invokeSubCategories(item.id!),
    );
  }

  getWidgetSubcategories(data) {
    _subCategoryResponse = data;
    if (_subCategoryResponse != null) {
      _subCategories = _subCategoryResponse!.data as Categories;
      return Expanded(
          child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.8,
        ),
        itemCount: _subCategories!.data!.categoryItems!.length,
        itemBuilder: (BuildContext context, int index) {
          return SubCategoryItemSmall(
              _subCategories!.data!.categoryItems![index],
              _subCategories!.data!.categoryItems![index].name!);
        },
      ));
    }
  }

  Future<ApiResponse<dynamic>> invokeSubCategories(String id) async {
    provider = Provider.of<CategoryProvider>(context, listen: false);
    await provider!.invokeSubcategory(id);
    return provider!.subCategoryResponse;
  }
}
