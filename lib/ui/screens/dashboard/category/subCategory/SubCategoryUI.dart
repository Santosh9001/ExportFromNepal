import 'package:export_nepal/model/core/categories/categories.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/CategoryProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'SubCategoryItemSmall.dart';

class SubCategoryUI extends StatefulWidget {
  final String title;

  const SubCategoryUI({Key? key, required this.title}) : super(key: key);

  @override
  _SubCategoryUIState createState() => _SubCategoryUIState();
}

class _SubCategoryUIState extends State<SubCategoryUI>
    with SingleTickerProviderStateMixin {
  // ignore: deprecated_member_use
  late List<Tab> _tabs = <Tab>[];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    addItems();
  }

  List<Tab> getTabs(int count) {
    _tabs.clear();
    for (int i = 0; i < count; i++) {
       String? name = _categories!.items![i].name;
      _tabs.add(Tab(text: name,));
    }
    return _tabs;
  }

  CategoryProvider? provider;
  Categories? _categories;
  ApiResponse? _categoryResponse;
  String defaultValue = "Loading....";

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<CategoryProvider>(context, listen: true);
    _categoryResponse = provider!.categoryResponse;
    if (_categoryResponse!.data != null) {
      _categories = _categoryResponse!.data as Categories;
      _tabs = getTabs(_categories!.items!.length);
    }

    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: new Text(
            widget.title,
            style: kTextStyleLargeBlue,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              color: kColorPrimary,
              size: 22,
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: kColorRed,
            labelStyle: TextStyle(color: kColorRed,fontSize: 10),
            unselectedLabelColor: kColorPrimary,
            labelColor: kColorRed,
            unselectedLabelStyle: TextStyle(color: kColorPrimary,fontSize: 10),
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: _tabs
              .map(
                (item) => Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      color: Colors.white,
                      child: GridView.count(
                        crossAxisCount: 4,
                        children: List.generate(_items.length,
                            (index) => SubCategoryItemSmall(title: "Title")),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  List<String> _items = <String>[];

  void addItems() {
    for (int i = 0; i < 20; i++) {
      _items.add("Value $i");
    }
  }
}
