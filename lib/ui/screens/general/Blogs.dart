import 'package:export_nepal/model/core/user_blogs.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/ui/screens/general/BlogsItem.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  _BlogsUIState createState() => _BlogsUIState();
}

class _BlogsUIState extends State<Blogs> {
  GeneralProvider? provider;
  ApiResponse? _blogResponse;
  User_blogs? _blogs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ApiResponse<dynamic>>(
        builder: (context, snapshot) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Blogs",
                              style: kTextStyleMediumPrimary,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop(true);
                        },
                        child: SvgPicture.asset(
                          "assets/images/iconly_light_outline_filter_2.svg",
                          width: 20,
                          height: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: snapshot.connectionState == ConnectionState.done
                          ? (snapshot.hasError
                              ? Center(
                                  child: Text('${snapshot.error} occured',
                                      style: kTextStyleSmallPrimary),
                                )
                              : getWidgetValue(snapshot.data))
                          : Center(
                              child: CircularProgressIndicator(),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        future: invokeBlogs(),
      ),
    );
  }

  Future<ApiResponse<dynamic>> invokeBlogs() async {
    provider = Provider.of<GeneralProvider>(context, listen: false);
    await provider!.invokeBlogs();
    return provider!.blogResponse;
  }

  getWidgetValue(data) {
    _blogResponse = data;
    if (_blogResponse != null) {
      _blogs = _blogResponse!.data as User_blogs;
      var _posts = _blogs!.data!.items;
      return ListView.builder(
          itemCount: _posts!.length,
          itemBuilder: (BuildContext context, int index) {
            return BlogsItem(_posts[index]);
          });
    }
  }
}
