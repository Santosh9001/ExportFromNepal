import 'package:export_nepal/provider/HomeDataProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomeMenuDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeDataProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Consumer<HomeDataProvider>(
                builder: (context, provider, child) {
                  return Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 100),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Container(
                              color: Colors.grey.shade400,
                              padding: EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Menu",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Icon(
                                    Icons.close,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              )),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: provider.menuList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return HomeDialogItems(
                                  title: provider.menuList[index]);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    new Divider(color: kColorBlack, height: 2),
                          ),
                        ),
                      ],
                    ),
                  ); //padding: EdgeInsets.all(15),
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class HomeDialogItems extends StatelessWidget {
  final String title;
  const HomeDialogItems({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeDataProvider>(
      create: (context) => HomeDataProvider(),
      child: Builder(
        builder: (context) {
          return Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 10),
            child: Consumer<HomeDataProvider>(
              builder: (context, provider, child) {
                return GestureDetector(
                  onTap: (){
                    provider.fetchDataAndNavigate(title);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(color: kColorPrimary, fontSize: 18),
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                        size: 30,
                        color: kColorPrimary,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
