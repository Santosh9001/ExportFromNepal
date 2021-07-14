import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/ui/screens/dashboard/category/subCategory/SubCategoryItemSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MyOrderUI extends StatefulWidget {
  final String title;

  MyOrderUI(this.title);

  @override
  _MyOrderUIState createState() => _MyOrderUIState();
}

class _MyOrderUIState extends State<MyOrderUI>
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
    _tabs = getTabs(3);
    addItems();
  }

  List<Tab> getTabs(int count) {
    _tabs.clear();
    _tabs.add(getTab("Pending Orders"));
    _tabs.add(getTab("Completed Orders"));
    _tabs.add(getTab("Cancelled Orders"));
    return _tabs;
  }

  Tab getTab(String tabTitle) {
    return Tab(
      text: tabTitle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
              size: 30,
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
            unselectedLabelColor: kPrimaryTextColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: kColorPrimary),
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
                      child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 80,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Container(
                                              padding: EdgeInsets.only(
                                                  left: 0, right: 10),
                                              width: 90,
                                              height: 80,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  kDummyImage,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "#112-12-112",
                                      style: kTextStyleSmallPrimary,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "15 July, 2021 at 5:45 PM",
                                          style: kTextStyleSmall,
                                        ),
                                        Text(
                                          "USD 475",
                                          style: kTextStyleMediumPrimary,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Divider(
                                      height: 2,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          MaterialIcons.location_on,
                                          size: 40,
                                          color: kColorOrange,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Delivered At:",
                                              style: kTextStyleSmall,
                                            ),
                                            Text(
                                              "177A Bleecker Street, New York City",
                                              style: kTextStyleSmallPrimary,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Divider(
                                      height: 2,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              FontAwesome.truck,
                                              color: kSecondaryTextColor,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "On Route",
                                              style: kTextStyleSmallPrimary,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: kColorPrimary,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                    MaterialCommunityIcons
                                                        .swap_horizontal,
                                                    color: Colors.white,
                                                    size: 20),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  "Re-Order",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
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
