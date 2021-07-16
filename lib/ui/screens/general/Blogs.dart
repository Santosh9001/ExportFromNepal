import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  _BlogsUIState createState() => _BlogsUIState();
}

class _BlogsUIState extends State<Blogs> {
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
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop(true);
                                    },
                                    child: Icon(
                                      Icons.chevron_left,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Blogs",
                                    style: kTextStyleMediumPrimary,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop(true);
                              },
                              child: SvgPicture.asset(
                                "assets/images/iconly_light_outline_filter_2.svg",
                                width: 20,
                                height: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
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
      ),
    );
  }
}
