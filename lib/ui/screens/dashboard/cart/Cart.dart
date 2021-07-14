import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return kCategoryBlue;
    }
    return kCategoryBlue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  "My Cart",
                  style: kTextStyleLargeBlue,
                ),
              ),
              Row(
                children: [
                  Icon(
                    MaterialIcons.delete,
                    color: kColorRed,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Empty Cart",
                    style: kTextStyleRedBold,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Flexible(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            margin: EdgeInsets.only(top: 4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.network(
                                kDummyImage,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      flex: 3,
                                      child: Text(
                                        "Handmade Evergy Healing Metal Yoga Meditational singing Bowl",
                                        style: kTextStyleBlueBold,
                                      )),
                                  Flexible(
                                    flex: 1,
                                    child: Checkbox(
                                      checkColor: Colors.white,
                                      value: true,
                                      onChanged: (bool? value) {},
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
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
                                height: 8,
                              ),
                              Text(
                                "\$ 59.99",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: kColorRed,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "+ Add to wish list",
                                    style: kTextStyleRegularPrimary,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          size: 20.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 8, right: 8),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              color: kCategoryBlue),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
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
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 8,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 8, right: 16, bottom: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 4,
                      child: TextField(
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5.0),
                          ),
                          hintText: 'Enter coupon code',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Flexible(
                      flex: 2,
                      child: Button(
                        text: "Apply Code",
                        onPress: () {},
                        color: kColorPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Subtotal: USD 255",
                                  style: kTextStyleBlueBold,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Tax: USD 0",
                                  style: kTextStyleBlueBold,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Total weight package: 4.5 kgs",
                                  style: kTextStyleBlueBold,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Discount: USD 0",
                                  style: kTextStyleBlueBold,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Order Total: USD 255",
                                  style: kTextStyleBlueBold,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: kColorRed,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          MaterialIcons.delete,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Delete Item",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: kColorPrimary,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/shippingEstimate');
                                          },
                                          child: Text(
                                            "Checkout",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Icon(AntDesign.arrowright,
                                            color: Colors.white, size: 20),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
