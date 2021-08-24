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
  ApiResponse? _manualResponse;

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
                    children: snapshot.connectionState == ConnectionState.done
                        ? (snapshot.hasError
                            ? Center(
                                child: Text('${snapshot.error} occured',
                                    style: kTextStyleSmallPrimary),
                              )
                            : getWidgetValue(snapshot.data))
                        : [
                            Center(
                              child: CircularProgressIndicator(),
                            )
                          ],
                  )
                ],
              ),
            ),
          );
        },
        future: invokeManuals(),
      ),
    );
  }

  Future<ApiResponse<dynamic>> invokeManuals() async {
    provider = Provider.of<GeneralProvider>(context, listen: false);
    await provider!.invokeManuals();
    return provider!.manualResponse;
  }

  getWidgetValue(data) {
    _manualResponse = data;
    if (_manualResponse != null) {
      _manuals = _manualResponse!.data as Manuals;
      return provider!.manualLists(_manuals);
    }
  }
}
