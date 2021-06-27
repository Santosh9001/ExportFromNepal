import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class CollectionGrid extends StatelessWidget {
  const CollectionGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Collection",
                style: kTextStyleBlueBoldMedium,
              ),

            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CollectionItem(),
                  CollectionItem(),
                  CollectionItem(),
                  CollectionItem()
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CollectionItem(),
                  CollectionItem(),
                  CollectionItem(),
                  CollectionItem()
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CollectionItem extends StatelessWidget {
  const CollectionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.zero,
          child: Container(
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                kDummyImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 4,),
        Text(
          "Art and Craft",
          style: TextStyle(
              fontSize: 10.0,
              color: kSecondaryTextColor,
              fontWeight: FontWeight.normal
          ),
        ),
      ],
    );
  }
}
