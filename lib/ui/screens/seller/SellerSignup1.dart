import 'package:export_nepal/provider/SellerProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellerSignup1 extends StatefulWidget {
  const SellerSignup1({Key? key}) : super(key: key);

  @override
  _SellerSignupState1 createState() => _SellerSignupState1();
}

class _SellerSignupState1 extends State<SellerSignup1> {
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
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Your First Name *",
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
                    "Your Last Name *",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
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
                    "Your Phone Number *",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 0, 10, 0),
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
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: new InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        );
      }),
    );
  }
}
