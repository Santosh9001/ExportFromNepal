import 'package:export_nepal/model/core/home_content.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class CollectionGrid extends StatelessWidget {
  final Collection? collection;

  CollectionGrid(this.collection);

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
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: collection!.items!.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.7,
            ),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Center(
                child: CollectionItem(collection!.items![index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CollectionItem extends StatelessWidget {
  final CollectionItems? item;
  CollectionItem(this.item);

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
        SizedBox(
          height: 4,
        ),
        Text(
          "${item!.name}",
          style: TextStyle(
              fontSize: 10.0,
              color: kSecondaryTextColor,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
