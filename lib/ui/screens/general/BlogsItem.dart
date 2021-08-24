import 'dart:io';

import 'package:export_nepal/model/core/user_blogs.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogsItem extends StatefulWidget {
  final Posts _blogs;
  BlogsItem(this._blogs);
  @override
  _BlogsItemState createState() => _BlogsItemState(_blogs);
}

class _BlogsItemState extends State<BlogsItem> {
  final Posts _blogs;
  _BlogsItemState(this._blogs);
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
            margin: EdgeInsets.only(top: 110),
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
                    "${_blogs.ogTitle}",
                    style: TextStyle(
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Posted : ${_blogs.publishTime!.substring(0, 11)}",
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
                        "Categories : ${_blogs.ogType}",
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
                    "${_blogs.ogDescription}",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            height: 150,
            padding: EdgeInsets.all(3),
            child: HtmlWidget(
              "${_blogs.shortContent}",
              textStyle: kTextStyleSmallPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
