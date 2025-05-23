import 'package:export_nepal/provider/SearchProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SearchUI extends StatefulWidget {
  const SearchUI({Key? key}) : super(key: key);

  @override
  _SearchUIState createState() => _SearchUIState();
}

class _SearchUIState extends State<SearchUI> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SearchProvider>(
      create: (context) => SearchProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Consumer<SearchProvider>(
                builder: (context, provider, child) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: Colors.black,
                                size: 40,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0.0),
                                child: TextField(
                                  style: kTextStyleRegularPrimary,
                                  textInputAction: TextInputAction.none,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    hintText: "Search Here",
                                    suffixIcon: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: SvgPicture.asset(
                                            "assets/images/iconly_light_outline_search.svg",
                                            allowDrawingOutsideViewBox: true,
                                            height: 25,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        PopupMenuButton(
                                            icon: SvgPicture.asset(
                                              'assets/images/iconly_light_outline_filter.svg',
                                              height: 25,
                                            ),
                                            itemBuilder: (context) => [
                                                  PopupMenuItem(
                                                    child: Text(
                                                      "All",
                                                      style:
                                                          kTextStyleMediumPrimary,
                                                    ),
                                                    value: "all",
                                                  ),
                                                  PopupMenuItem(
                                                    child: Text(
                                                      "Exporter",
                                                      style:
                                                          kTextStyleMediumPrimary,
                                                    ),
                                                    value: "exporter",
                                                  ),
                                                  PopupMenuItem(
                                                    child: Text(
                                                      "Wholesaler",
                                                      style:
                                                          kTextStyleMediumPrimary,
                                                    ),
                                                    value: "wholesaler",
                                                  ),
                                                  PopupMenuItem(
                                                    child: Text(
                                                      "Service",
                                                      style:
                                                          kTextStyleMediumPrimary,
                                                    ),
                                                    value: "service",
                                                  ),
                                                ]),
                                        SizedBox(
                                          width: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your search results for",
                              style: kTextStyleSmallPrimary,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '"Handmade Dresses"',
                              style: kTextStyleBlueSmall,
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Expanded(
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.6,
                            ),
                            itemCount: 30,
                            itemBuilder: (BuildContext context, int index) {
                              return Text("Test"); //ProductCardSmall();
                            },
                          ),
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
