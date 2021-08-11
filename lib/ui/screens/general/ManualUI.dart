import 'package:export_nepal/model/core/manuals.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManualUI extends StatefulWidget {
  const ManualUI({Key? key}) : super(key: key);

  @override
  _ManualsState createState() => _ManualsState();
}

class _ManualsState extends State<ManualUI> {
  GeneralProvider? provider;

  Manuals? _manuals;
  String defaultValue = "Loading....";
  ApiResponse? _manualResponse;

  void reloadServerData() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<GeneralProvider>(context, listen: true);
    provider!.invokeManuals();
    _manualResponse = provider!.manualResponse;
    if (_manualResponse!.data != null) {
      _manuals = _manualResponse!.data as Manuals;
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
                      "Manuals",
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
                  "Manuals",
                  style: kTextStyleBlueBoldMedium,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: provider!.manualLists(_manuals),
              )
            ],
          ),
        ),
      ),
    );
  }
}
