import 'package:export_nepal/ui/screens/dashboard/category/CategoryItemSmall.dart';
import 'package:export_nepal/ui/screens/dashboard/subCategory/SubCategoryItemSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategoryUI extends StatefulWidget {
  const SubCategoryUI({Key? key}) : super(key: key);

  @override
  _SubCategoryUIState createState() => _SubCategoryUIState();
}

class _SubCategoryUIState extends State<SubCategoryUI>
    with SingleTickerProviderStateMixin {
  // ignore: deprecated_member_use
  late List<Tab> _tabs = <Tab>[];
  List<Widget> _generalWidgets = <Widget>[];
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabs = getTabs(8);
    _tabController =
        TabController(length: _tabs.length, vsync: this, initialIndex: 0);
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
            "Categories",
            style: kTextStyleLargeBlue,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              color: kColorPrimary,
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
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: getWidgets()
              .map(
                (item) => Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return SubCategoryItemSmall();
                      },
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  List<Widget> getWidgets() {
    _generalWidgets.clear();
    for (int i = 0; i < _tabs.length; i++) {
      _generalWidgets.add(getWidget(i));
    }
    return _generalWidgets;
  }

  Widget getWidget(int widgetNumber) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.8,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return SubCategoryItemSmall();
        },
      ),
    );
  }
}
