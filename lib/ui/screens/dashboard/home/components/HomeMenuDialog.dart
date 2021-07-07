import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeMenuDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeDialogItems(title: "name");
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      new Divider(color: kColorBlack, height: 2),
                ),
              ),
            ],
          ),
        ),
        //padding: EdgeInsets.all(15),
      ),
    );
  }
}

class HomeDialogItems extends StatelessWidget {
  final String title;
  const HomeDialogItems({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ProductDetailsUI()),
        // );
      },
      child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 10),
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
          )),
    );
  }
}
