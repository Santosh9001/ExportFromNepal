import 'package:export_nepal/model/core/cms_page.dart';
import 'package:export_nepal/model/core/terms_of_use.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class TermsOfUse extends StatefulWidget {
  const TermsOfUse({Key? key}) : super(key: key);

  @override
  _TermsOfUseState createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  GeneralProvider? provider;
  Cms_page? _terms_of_use;
  ApiResponse? _termsResponse;

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
                          "Terms of Use",
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
                      "Terms of Use",
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
        future: invokeTermsOfUse(),
      ),
    );
  }

  getWidgetValue(data) {
    _termsResponse = data;
    if (_termsResponse != null) {
      _terms_of_use = _termsResponse!.data as Cms_page;
      return HtmlWidget(
        "${_terms_of_use!.data!.content}",
        textStyle: kTextStyleSmallPrimary,
      );
    }
  }

  Future<ApiResponse<dynamic>> invokeTermsOfUse() async {
    provider = Provider.of<GeneralProvider>(context, listen: false);
    await provider!.invokeCmsPage(APIPathHelper.getValue(APIPath.terms_of_use));
    return provider!.termsOfUseResponse;
  }
}
