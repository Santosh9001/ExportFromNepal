import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsItem extends StatelessWidget {
  const ReviewsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/productLists');
      },
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
              "Lemon Grass, Natural Flora Insense Stick",
              style: kTextStyleBlackBold,
            ),
            SizedBox(
              height: 5,
            ),
            RatingBar.builder(
              wrapAlignment: WrapAlignment.start,
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 15,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
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
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.delete, size: 15,),
                label: Text("Delete Review", style: TextStyle(fontSize: 10),),
                style: ElevatedButton.styleFrom(primary: kColorRed),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.edit, size: 15),
                label: Text("Edit Review", style: TextStyle(fontSize: 10),),
                style: ElevatedButton.styleFrom(primary: kColorPrimary),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
