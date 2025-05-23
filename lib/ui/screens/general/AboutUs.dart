import 'package:export_nepal/model/core/aboutus.dart';
import 'package:export_nepal/model/core/cms_page.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  GeneralProvider? provider;

  Cms_page? _aboutUs;
  ApiResponse? _aboutUsResponse;

  void reloadServerData() {
    // setState(() {});
  }

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
                    children: [
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "About",
                          style: kTextStyleMediumPrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "About Us",
                      style: kTextStyleBlueBoldMedium,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
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
                  ),
                ],
              ),
            ),
          );
        },
        future: invokeAboutUs(),
      ),
    );
  }

  Future<ApiResponse<dynamic>> invokeAboutUs() async {
    provider = Provider.of<GeneralProvider>(context, listen: false);
    await provider!.invokeCmsPage(APIPathHelper.getValue(APIPath.about_us));
    return provider!.aboutUsResponse;
  }

  getWidgetValue(data) {
    _aboutUsResponse = data;
    if (_aboutUsResponse != null) {
      _aboutUs = _aboutUsResponse!.data as Cms_page;
      return HtmlWidget(
        "${_aboutUs!.data!.content}",
        textStyle: kTextStyleSmallPrimary,
      );
    }
  }
}
