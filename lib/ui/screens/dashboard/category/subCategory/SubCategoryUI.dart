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
  // ignore: deprecated_member_use
  late List<Tab> _tabs = <Tab>[];

  CategoryProvider? provider;
  Categories? _categories, _subCategories;
  // List<Categories> _subCategories = [];
  ApiResponse? _categoryResponse, _subCategoryResponse;
  String defaultValue = "Loading....";
  int _currentTab = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  List<Tab> getTabs(int count) {
    _tabs.clear();
    if (_categories != null && _categories!.items != null) {
      for (int i = 0; i < _categories!.items!.length; i++) {
        String? name = _categories!.items![i].name;
        _tabs.add(Tab(
          text: name,
        ));
      }
    }
    return _tabs;
  }

  fetchSubCategory() {
    _subCategories = null;
    provider!.invokeSubcategory(_categories!.items![_currentTab].id!);
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<CategoryProvider>(context, listen: true);
    if (provider != null) {
      provider!.invokeCategories();
      _categoryResponse = provider!.categoryResponse;

      if (_categoryResponse != null &&
          _categoryResponse!.status == Status.COMPLETED) {
        _categories = _categoryResponse!.data! as Categories;
        if (_tabs.length <= 0) {
          _tabs = getTabs(_categories!.items!.length);
        }
        fetchSubCategory();
      }
      _subCategoryResponse = provider!.subCategoryResponse;
      if (_subCategoryResponse != null &&
          _subCategoryResponse!.status == Status.COMPLETED) {
        _subCategories = _subCategoryResponse!.data! as Categories;
        // _subCategories.add(sub);
        // _subCategories =  as Categories;
        // print(_subCategories!.items!.length);
      }
    }
    return DefaultTabController(
      length: _tabs.length,
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
              size: 22,
            ),
          ),
          bottom: TabBar(
            onTap: (value) {
              _currentTab = value;
              fetchSubCategory();
            },
            isScrollable: true,
            indicatorColor: kColorRed,
            labelStyle: TextStyle(color: kColorRed, fontSize: 10),
            unselectedLabelColor: kColorPrimary,
            labelColor: kColorRed,
            unselectedLabelStyle: TextStyle(color: kColorPrimary, fontSize: 10),
            tabs: _tabs,
          ),
        ),
        body: new TabBarView(
          children: _tabs
              .map((item) => SubCategoryList(_subCategories, item.text))
              .toList(),
        ),
      ),
    );
  }
}
