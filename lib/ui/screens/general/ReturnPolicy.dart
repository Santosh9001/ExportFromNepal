import 'package:export_nepal/model/core/return_policy.dart';
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
  Return_policy? _return_policy;
  String defaultValue = "Loading....";
  ApiResponse? _policyResponse;

  getContent() {
    if (_policyResponse!.status != Status.LOADING) {
      if (_policyResponse!.status == Status.ERROR && _return_policy == null) {
        ServerErrorWidget(_policyResponse!.message!,
            onReload: reloadServerData);
        return defaultValue;
      } else {
        return _return_policy!.content!;
      }
    } else {
      return defaultValue;
    }
  }

  void reloadServerData() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<GeneralProvider>(context, listen: true);
    provider!.invokeReturnPolicy();
    _policyResponse = provider!.returnPolicyResponse;
    if (_policyResponse!.data != null) {
      _return_policy = _policyResponse!.data as Return_policy;
    }
    return Scaffold(
      body: SafeArea(
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: HtmlWidget(
                      getContent(),
                      textStyle: kTextStyleSmallPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
