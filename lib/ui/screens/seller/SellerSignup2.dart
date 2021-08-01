import 'package:export_nepal/provider/SellerProvider.dart';
import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellerSignup2 extends StatefulWidget {
  const SellerSignup2({Key? key}) : super(key: key);

  @override
  _SellerSignupState2 createState() => _SellerSignupState2();
}

class _SellerSignupState2 extends State<SellerSignup2> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SellerProvider(),
      child: Builder(builder: (context) {
        return Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Consumer<SellerProvider>(
            builder: (context, provider, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Company Name *",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Selected Categories *",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        provider.getCategories().length == 0
                            ? Text(
                                "Select Category",
                                style: kTextStyleSmall,
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: provider.getCategories(),
                              ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.expand_more,
                                color: kSecondaryTextColor,
                                size: 20,
                              ),
                              Text(
                                provider.getTextName,
                                style: kTextStyleSmall,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "How will you be selling products in our platform?",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(height: 10,),
                  GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.6,
                          ),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                              ],);
                          },
                        ),
                ],
              );
            },
          ),
        );
      }),
    );
  }
}
