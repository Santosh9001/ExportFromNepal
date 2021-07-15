import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class AddressDetailUI extends StatefulWidget {
  const AddressDetailUI({Key? key}) : super(key: key);

  @override
  _AddressDetailUIState createState() => _AddressDetailUIState();
}

class _AddressDetailUIState extends State<AddressDetailUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kColorBackground,
            elevation: 0,
            title: Text(
              "Add New Address",
              style: kTextStyleLargeBlue,
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_left,
                color: kColorPrimary,
                size: 30,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your First Name*", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: 'First Name',
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("Your Last Name*", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: 'Last Name',
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("Company Name", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: 'Company Name',
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("Country*", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: 'Country',
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("State / Province *", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: '',
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("City*", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: '',
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("Street Address*", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: '',
                    ),
                  ),
                  SizedBox(height: 4,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: '',
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("Zip / Postal Code*", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: '',
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("Phone Number*", style: kTextStyleSmallPrimary,),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 5.0),
                      ),
                      hintText: '',
                    ),
                  ),
                  SizedBox(height: 16,),
                  Align(
                    alignment: Alignment.center,
                    child: Button(
                      text: "Save Address",
                      onPress: () {
                      },
                      color: kColorPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
