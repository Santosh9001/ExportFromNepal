import 'package:export_nepal/model/core/cms_page.dart';
import 'package:export_nepal/model/core/return_policy.dart';
import 'package:export_nepal/network_module/api_path.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class ReturnPolicy extends StatefulWidget {
  const ReturnPolicy({Key? key}) : super(key: key);

  @override
  _ReturnPolicyState createState() => _ReturnPolicyState();
}

class _ReturnPolicyState extends State<ReturnPolicy> {
  GeneralProvider? provider;
  Cms_page? _return_policy;
  ApiResponse? _policyResponse;
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
                          "Return Policy",
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
                      "Return Policy",
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
        future: invokeReturnPolicy(),
      ),
    );
  }

  Future<ApiResponse<dynamic>> invokeReturnPolicy() async {
    provider = Provider.of<GeneralProvider>(context, listen: false);
    await provider!
        .invokeCmsPage(APIPathHelper.getValue(APIPath.return_policy));
    return provider!.returnPolicyResponse;
  }

  getWidgetValue(data) {
    _policyResponse = data;
    if (_policyResponse != null) {
      _return_policy = _policyResponse!.data as Cms_page;
      return HtmlWidget(
        "${_return_policy!.data!.content}",
        textStyle: kTextStyleSmallPrimary,
      );
    }
  }
}
