import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'components/MyAccountInfo.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final List<String> entries = <String>[
    'My Orders',
    'Downloadable Products',
    'My Wish list',
    'Address Book',
    'Account Information',
    'Stored Payment Methods',
    'Product Reviews',
    'Newsletter Subscriptions',
    'Affiliates',
    'Saved Cards',
    'Supplier\'s Message',
    'RMA',
    'Requested Quotes',
    'Logout'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 8.0,
          ),
          Container(
            width: double.infinity,
            child: Text(
              "My Account",
              style: kTextStyleLargeBlue,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          MyAccountInfo(),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Navigator.pushNamed(context, '/myOrder');
                      } else if (index == 1) {
                      } else if (index == 2) {
                        Navigator.pushNamed(context, '/wishList');
                      } else if (index == 3) {
                        Navigator.pushNamed(context, '/addressBook');
                      } else if (index == 4) {
                        Navigator.pushNamed(context, '/accountInformation');
                      } else if (index == 6) {
                        Navigator.pushNamed(context, '/productReviews');
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            entries[index],
                            style: kTextStyleRegularPrimary,
                          ),
                          index == entries.length - 1
                              ? Icon(
                                  MaterialIcons.logout,
                                  color: kSecondaryTextColor,
                                  size: 16,
                                )
                              : Icon(
                                  AntDesign.right,
                                  color: kSecondaryTextColor,
                                  size: 16,
                                ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// child: Center(child: Text('Entry ${entries[index]}')),
