import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class CartListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.centerLeft, children: [
      Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          margin: EdgeInsets.only(left: 55),
          padding: EdgeInsets.fromLTRB(55, 8, 5, 8),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    "Handmade Evergy Healing Metal Yoga Meditational singing Bowl",
                    style: kTextStyleBlueSmall,
                  )),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Color: ",
                    style: kTextStyleSmallPrimary,
                  ),
                  Container(
                    color: kColorPrimary,
                    width: 14,
                    height: 14,
                    margin: EdgeInsets.only(top: 2),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "|",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Size: XL",
                    style: kTextStyleSmallPrimary,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$ 59.99",
                style: TextStyle(
                    fontSize: 13.0,
                    color: kColorRed,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+ Add to wish list",
                    style: kTextStyleSmallPrimary,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.remove,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: kCategoryBlue),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "1",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.add,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            kDummyImage,
            fit: BoxFit.cover,
            height: 90,
            width: 80,
          ),
        ),
      ),
      SizedBox(
        height: 10,
        width: 20,
        child: Checkbox(
          checkColor: Colors.white,
          value: true,
          onChanged: (bool? value) {},
          activeColor: kColorPrimary,
          focusColor: Colors.white,
        ),
      )
    ]);
  }
}
