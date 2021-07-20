import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GeneralProvider>(
      create: (context) => GeneralProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Consumer<GeneralProvider>(
                builder: (context, provider, child) {
                  provider.invokeAboutUs();
                  return Padding(
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
                                "About",
                                style: kTextStyleMediumPrimary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "About Us",
                          style: kTextStyleBlueBoldMedium,
                        ),),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 10,right: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: HtmlWidget(provider.getAboutUs,textStyle: kTextStyleSmallPrimary,),
                          )
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
