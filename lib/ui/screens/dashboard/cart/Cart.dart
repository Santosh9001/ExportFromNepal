import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/ui/screens/dashboard/cart/CartListItem.dart';
import 'package:export_nepal/ui/screens/dashboard/cart/NoCart.dart';
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

  bool check = false;
  @override
  Widget build(BuildContext context) {
    return check
        ? NoCart()
        : Column(
            children: [
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
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
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: ListView.separated(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return CartListItem();
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
                          left: 10, top: 8, right: 10, bottom: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 4,
                            child: TextField(
                              decoration: new InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 5.0),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      '/shippingEstimate');
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
                                                  color: Colors.white,
                                                  size: 20),
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
