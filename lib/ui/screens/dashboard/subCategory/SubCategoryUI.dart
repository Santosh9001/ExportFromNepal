import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategoryUI extends StatefulWidget {
  const SubCategoryUI({Key? key}) : super(key: key);

  @override
  _SubCategoryUIState createState() => _SubCategoryUIState();
}

class _SubCategoryUIState extends State<SubCategoryUI> {
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
            onPressed: () {

            },
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
            tabs: <Widget>[
              Tab(text: "Tab 1"),
              Tab(text: "Tab 2"),
              Tab(text: "Tab 3"),
              Tab(text: "Tab 4"),
              Tab(text: "Tab 5"),
              Tab(text: "Tab 6"),
              Tab(text: "Tab 7"),
              Tab(text: "Tab 8"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text("Tab Content 1")),
            Center(child: Text("Tab Content 2")),
            Center(child: Text("Tab Content 3")),
            Center(child: Text("Tab Content 4")),
            Center(child: Text("Tab Content 5")),
            Center(child: Text("Tab Content 6")),
            Center(child: Text("Tab Content 7")),
            Center(child: Text("Tab Content 8")),
          ],
        ),
      ),
    );
  }
}
