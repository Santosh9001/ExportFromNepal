import 'package:export_nepal/provider/SellerProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellerSignup4 extends StatefulWidget {
  const SellerSignup4({Key? key}) : super(key: key);

  @override
  _SellerSignupState4 createState() => _SellerSignupState4();
}

class _SellerSignupState4 extends State<SellerSignup4> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SellerProvider(),
      child: Builder(builder: (context) {
        return Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Consumer<SellerProvider>(
            builder: (context, provider, child) {
              return CustomScrollView(
                slivers: [
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Country *",
                          style: kTextStyleSmallPrimary,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: dropdownValue,
                            icon: const Icon(Icons.expand_more),
                            iconSize: 18,
                            style: const TextStyle(color: kSecondaryTextColor),
                            underline: Container(
                              color: null,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['One', 'Two', 'Free', 'Four']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "State / Province *",
                          style: kTextStyleSmallPrimary,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            obscureText: true,
                            decoration: new InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "City *",
                          style: kTextStyleSmallPrimary,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            obscureText: true,
                            decoration: new InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Address Line *",
                          style: kTextStyleSmallPrimary,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            obscureText: true,
                            decoration: new InputDecoration(
                                hintStyle: kTextStyleSmall,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Zip / Postal Code *",
                          style: kTextStyleSmallPrimary,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 2.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            obscureText: true,
                            decoration: new InputDecoration(
                                hintStyle: kTextStyleSmall,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              height: 10,
                              child: Checkbox(
                                value: provider.getSellersLicence,
                                onChanged: (value) {
                                  provider.setLicenceAgreement(value!);
                                },
                                activeColor: kColorPrimary,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "I agree to the ",
                                style: kTextStyleSmallPrimary,
                              ),
                            ),
                            Text(
                                "Seller Licence Agreement ",
                                style: kTextStyleRedSmall,
                              ),
                          ],
                        ),
                      )
                      ],
                    ),
                  ])),
                ],
              );
            },
          ),
        );
      }),
    );
  }
}
