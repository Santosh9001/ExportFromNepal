import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class QuotesItem extends StatelessWidget {
  const QuotesItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Quotes Title",
              style: kTextStyleBlackBold,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Singing bowl is also known as the Meditation bowl.",
              style: kTextStyleSmallPrimary,
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Row(
                  children: [
                    Text("Status :", style: kTextStyleSmallPrimary),
                    Text(
                      "Completed",
                      style: kTextStyleBlackBold,
                    ),
                  ],
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 15,
                ),
                label: Text(
                  "Delete",
                  style: TextStyle(fontSize: 10),
                ),
                style: ElevatedButton.styleFrom(primary: kColorRed),
              ),
              SizedBox(
                width: 15,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
