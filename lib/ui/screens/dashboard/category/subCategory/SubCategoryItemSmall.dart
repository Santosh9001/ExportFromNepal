import 'package:export_nepal/ui/screens/dashboard/category/subCategory/innerCategory/InnerCategoryUI.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategoryItemSmall extends StatelessWidget {
  final String title;

  const SubCategoryItemSmall({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.zero,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InnerCategoryUI()),
              );
            },
            child: Container(
              color: kCategoryBlue,
              width: 70,
              height: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                /*child: Image.network(
                kDummyImage,
                fit: BoxFit.cover,
              ),*/
              ),
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 10.0,
              color: kPrimaryTextColor,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
