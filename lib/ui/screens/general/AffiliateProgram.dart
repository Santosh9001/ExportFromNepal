import 'package:export_nepal/model/core/affiliate_program.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class AffiliateProgram extends StatefulWidget {
  const AffiliateProgram({Key? key}) : super(key: key);

  @override
  _AffiliateProgramState createState() => _AffiliateProgramState();
}

class _AffiliateProgramState extends State<AffiliateProgram> {
  GeneralProvider? provider;
  Affiliate_program? _affiliate_program;
  String defaultValue = "Loading....";
  ApiResponse? _affiliateResponse;

  getContent() {
    if (_affiliateResponse!.status != Status.LOADING) {
      if (_affiliateResponse!.status == Status.ERROR &&
          _affiliate_program == null) {
        ServerErrorWidget(_affiliateResponse!.message!,
            onReload: reloadServerData);
        return defaultValue;
      } else {
        return _affiliate_program!.content!;
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
    provider!.invokeAffiliateProgram();
    _affiliateResponse = provider!.affiliateResponse;
    if (_affiliateResponse!.data != null) {
      _affiliate_program = _affiliateResponse!.data as Affiliate_program;
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
                      "Affiliate Program",
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
                  "Affiliate Program",
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
