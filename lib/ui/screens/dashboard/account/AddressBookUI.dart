import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AddressBook extends StatefulWidget {
  const AddressBook({Key? key}) : super(key: key);

  @override
  _AddressBookState createState() => _AddressBookState();
}

class _AddressBookState extends State<AddressBook>
    with SingleTickerProviderStateMixin {
  late List<Tab> _tabs = <Tab>[];

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

  List<String> _items = <String>[];

  void addItems() {
    for (int i = 0; i < 20; i++) {
      _items.add("Value $i");
    }
  }

  List<Tab> getTabs(int count) {
    _tabs.clear();
    _tabs.add(getTab("Billing Address"));
    _tabs.add(getTab("Shipping Address"));
    return _tabs;
  }

  Tab getTab(String tabTitle) {
    return Tab(
      text: tabTitle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kColorBackground,
            elevation: 0,
            title: Text(
              "Address Book",
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
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: TabBar(
                  unselectedLabelColor: kPrimaryTextColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: kColorPrimary),
                  tabs: _tabs,
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: _tabs
                .map(
                  (item) => Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Entypo.address,
                          size: 100,
                          color: kColorLightRed,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text("Looks like you have not added any addresses yet",
                            textAlign: TextAlign.center,
                            style: kTextStyleLargeRed)
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addressDetails');
            },
            child: Icon(Icons.add, color: Colors.white,),
            backgroundColor: kColorPrimary,
          ),
        ),
      ),
    );
  }
}
