import 'package:export_nepal/provider/QuoteProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/account/components/QuotesItem.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RequestedQuotes extends StatefulWidget {
  const RequestedQuotes({Key? key}) : super(key: key);

  @override
  _RequestedQuotesState createState() => _RequestedQuotesState();
}

class _RequestedQuotesState extends State<RequestedQuotes> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuoteProvider>(
      create: (context) => QuoteProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(child: Consumer<QuoteProvider>(
            builder: (context, provider, child) {
              return Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
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
                              "Requested Quotes",
                              style: kTextStyleMediumPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) {
                            return QuotesItem();
                          },
                        ),
                      ),
                      //padding: EdgeInsets.all(15),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: kColorRed),
                              onPressed: () {
                              },
                              child: Text(
                                "Delete All ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: kColorPrimary),
                              onPressed: () {
                              },
                              child: Text(
                                "Request A Quote",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
        );
      }),
    );
  }
}
