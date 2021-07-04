import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  List<Widget> _generalWidgets = <Widget>[];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabs = getTabs(8);
    addItems();
  }

  List<Tab> getTabs(int count) {
    _tabs.clear();
    for (int i = 0; i < count; i++) {
      _tabs.add(getTab(i));
    }
    return _tabs;
  }

  Tab getTab(int widgetNumber) {
    return Tab(
      text: "Tab $widgetNumber",
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
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
            labelStyle: TextStyle(color: kColorRed),
            unselectedLabelColor: kColorPrimary,
            labelColor: kColorRed,
            unselectedLabelStyle: TextStyle(color: kColorPrimary),
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
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 0.8,
                        ),
                        itemCount: _tabs.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SubCategoryItemSmall(title: item.text!);
                        },
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
