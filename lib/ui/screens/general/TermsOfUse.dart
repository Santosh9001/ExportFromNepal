import 'package:export_nepal/model/core/terms_of_use.dart';
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

  Terms_of_use? _terms_of_use;
  String defaultValue = "Loading....";
  ApiResponse? _termsResponse;

  void reloadServerData() {
    setState(() {});
  }

  getContent() {
    if (_termsResponse!.status != Status.LOADING) {
      if (_termsResponse!.status == Status.ERROR && _terms_of_use == null) {
        ServerErrorWidget(_termsResponse!.message!, onReload: reloadServerData);
        return defaultValue;
      } else {
        return _terms_of_use!.content!;
      }
    } else {
      return defaultValue;
    }
  }
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<GeneralProvider>(context, listen: true);
    provider!.invokeTermsOfUse();
    _termsResponse = provider!.termsOfUseResponse;
    if (_termsResponse!.data != null) {
      _terms_of_use = _termsResponse!.data as Terms_of_use;
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
