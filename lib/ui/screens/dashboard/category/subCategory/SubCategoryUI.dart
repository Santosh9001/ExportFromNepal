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
  const SubCategoryUI({Key? key}) : super(key: key);

  @override
  _SubCategoryUIState createState() => _SubCategoryUIState();
}

class _SubCategoryUIState extends State<SubCategoryUI>
    with SingleTickerProviderStateMixin {
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
        return DefaultTabController(
          length: snapshot.connectionState == ConnectionState.done
              ? (snapshot.hasError
                  ? Center(
                      child: Text('${snapshot.error} occured',
                          style: kTextStyleSmallPrimary),
                    )
                  : getCategoryLength(snapshot.data))
              : 0,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: new Text(
                "Categories",
                style: kTextStyleLargeBlue,
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                icon: Icon(
                  Icons.chevron_left,
                  color: kColorPrimary,
                  size: 30,
                ),
              ),
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: kColorRed,
                labelStyle: TextStyle(color: kColorRed, fontSize: 12),
                unselectedLabelColor: kColorPrimary,
                labelColor: kColorRed,
                unselectedLabelStyle:
                    TextStyle(color: kColorPrimary, fontSize: 10),
                tabs: snapshot.connectionState == ConnectionState.done
                    ? (snapshot.hasError
                        ? Center(
                            child: Text('${snapshot.error} occured',
                                style: kTextStyleSmallPrimary),
                          )
                        : getWidgetValue(snapshot.data))
                    : [
                      ],
              ),
            ),
            body: new TabBarView(
                children: snapshot.connectionState == ConnectionState.done
                    ? (snapshot.hasError
                        ? Center(
                            child: Text('${snapshot.error} occured',
                                style: kTextStyleSmallPrimary),
                          )
                        : getWidgetSubcategories(snapshot.data))
                    : []),
          ),
        );
      },
      future: invokeCategories(),
    );
  }

  getCategoryLength(data) {
    _categoryResponse = data;
    if (_categoryResponse != null) {
      _categories = _categoryResponse!.data as Categories;
      return _categories!.items!.length;
    }
  }

  getWidgetValue(data) {
    _categoryResponse = data;
    if (_categoryResponse != null) {
      _categories = _categoryResponse!.data as Categories;
      return List<Widget>.generate(_categories!.items!.length, (int index) {
        return Text("${_categories!.items![index].name}");
      });
    }
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

  Future<ApiResponse<dynamic>> invokeCategories() async {
    provider = Provider.of<CategoryProvider>(context, listen: false);
    await provider!.invokeCategories();
    return provider!.categoryResponse;
  }
}
