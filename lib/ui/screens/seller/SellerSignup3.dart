import 'package:export_nepal/provider/SellerProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellerSignup3 extends StatefulWidget {
  const SellerSignup3({Key? key}) : super(key: key);

  @override
  _SellerSignupState3 createState() => _SellerSignupState3();
}

class _SellerSignupState3 extends State<SellerSignup3> {
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
                    "Email Address *",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
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
                    "Password *",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                    child: TextField(
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
                    "Confirm Password *",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                    child: TextField(
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
                    "Create Public Profile URL *",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 2.0),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      decoration: new InputDecoration(
                          hintText: "eg: Company Name",
                          hintStyle: kTextStyleSmall,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  Text(
                    "https://exportfromnepal.com/CompanyName",
                    style: kTextStyleSmallPrimary,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This will be used to display your public profile",
                    style: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: 9,
                        fontStyle: FontStyle.italic),
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
