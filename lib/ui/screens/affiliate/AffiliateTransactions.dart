import 'package:export_nepal/provider/AffiliateProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class AffiliateTransactions extends StatefulWidget {
  const AffiliateTransactions({Key? key}) : super(key: key);

  @override
  _AffiliateTransactionState createState() => _AffiliateTransactionState();
}

class _AffiliateTransactionState extends State<AffiliateTransactions> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AffiliateProvider>(
        create: (context) => AffiliateProvider(),
        child: Builder(
          builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                child: Consumer<AffiliateProvider>(
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
                                    "Transactions",
                                    style: kTextStyleMediumPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              "assets/images/aff-trans.svg",
                              height: 160,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ));
  }
}
