import 'package:export_nepal/provider/NewsLetterProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsLetterSubscription extends StatefulWidget {
  const NewsLetterSubscription({Key? key}) : super(key: key);

  @override
  _NewsLetterSubscriptionState createState() => _NewsLetterSubscriptionState();
}

class _NewsLetterSubscriptionState extends State<NewsLetterSubscription> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NewsLetterProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(body: SafeArea(
            child: Consumer<NewsLetterProvider>(
              builder: (context, provider, child) {
                return Column(
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
                              "Newsletter Subscriptions",
                              style: kTextStyleMediumPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "SUBSCRIPTION OPTIONS",
                        style: kTextStyleRegularPrimary,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "General Subscription",
                                style: provider.isGeneralSubscriptionEnabled
                                    ? kTextStyleRegularBlue
                                    : kTextStyleRegularPrimary,
                              ),
                              Checkbox(
                                value: provider.isGeneralSubscriptionEnabled,
                                onChanged: (value) {
                                  provider.toggleGeneralSubscription();
                                },
                                activeColor: kColorPrimary,
                              )
                            ],
                          ),
                          Text(
                            "You will receive email notification regarding general store information.",
                            style: kTextStyleSmallPrimary,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Other Notifications",
                                style: provider.isOtherNotificationEnabled
                                    ? kTextStyleRegularBlue
                                    : kTextStyleRegularPrimary,
                              ),
                              Checkbox(
                                value: provider.isOtherNotificationEnabled,
                                onChanged: (value) {
                                  provider.toggleOtherNotifications();
                                },
                                activeColor: kColorPrimary,
                              )
                            ],
                          ),
                          Text(
                            "You will receive email notification regarding general store information.",
                            style: kTextStyleSmallPrimary,
                          ),
                        ],
                      ),
                    ),
                    Expanded(flex: 5, child: Text("")),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kColorRed),
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: kColorPrimary),
                              onPressed: () {},
                              child: Text(
                                "Save",
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
                );
              },
            ),
          ));
        },
      ),
    );
  }
}
