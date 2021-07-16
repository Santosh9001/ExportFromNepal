import 'dart:io';

import 'package:export_nepal/ui/screens/general/Blogs.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogsItem extends StatefulWidget {
  @override
  _BlogsItemState createState() => _BlogsItemState();
}

class _BlogsItemState extends State<BlogsItem> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 90),
            padding: EdgeInsets.only(top: 45),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Export from Nepal New Updates and Sales",
                    style: TextStyle(
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Posted : Apri 2,2021",
                        style: kTextStyleSmallestPrimary,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                        height: 8,
                        width: 1,
                        color: kSecondaryTextColor,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Categories : Blog post, Article",
                        style: kTextStyleSmallestPrimary,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                        height: 8,
                        width: 1,
                        color: kSecondaryTextColor,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Author : EFN Admin",
                        style: kTextStyleSmallestPrimary,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1,
                    color: kSecondaryTextColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Description goes here about the blog",
                    style: kTextStyleSmallPrimary,
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                )),
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 150,
            padding: EdgeInsets.all(3),
            child: WebView(
              initialUrl:
                  'https://www.youtube.com/watch?v=kEbcHhNsRoU&list=RDfzHWFF6Je3o&index=3',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}
