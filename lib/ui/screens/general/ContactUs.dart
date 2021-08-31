import 'package:export_nepal/model/core/contact.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/GeneralProvider.dart';
import 'package:export_nepal/ui/screens/general/Maps.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  GeneralProvider? provider;
  ApiResponse? _contactResponse;
  Contact? _contact;
  String dropdownValue = 'Nepal';  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ApiResponse<dynamic>>(
        builder: (context, snapshot) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      children: [
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Contact Us",
                            style: kTextStyleMediumPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          snapshot.connectionState == ConnectionState.done
                              ? (snapshot.hasError
                                  ? Center(
                                      child: Text('${snapshot.error} occured',
                                          style: kTextStyleSmallPrimary),
                                    )
                                  : getWidgetData(snapshot.data))
                              : Center(
                                  child: CircularProgressIndicator(),
                                ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Send Your Comments",
                              style: kTextStyleBlueBoldMedium,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              keyboardType: TextInputType.name,
                              style: kTextStyleSmallPrimary,
                              decoration: new InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 5.0),
                                ),
                                hintText: 'Your Name',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: kTextStyleSmallPrimary,
                              decoration: new InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 5.0),
                                ),
                                hintText: 'Your Email',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: kTextStyleSmallPrimary,
                              decoration: new InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 5.0),
                                ),
                                hintText: 'Your Phone',
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
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
                              style:
                                  const TextStyle(color: kSecondaryTextColor),
                              underline: Container(
                                color: null,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>[
                                'Nepal',
                                'Two',
                                'Free',
                                'Four'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
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
                              style:
                                  const TextStyle(color: kSecondaryTextColor),
                              underline: Container(
                                color: null,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>[
                                'Nepal',
                                'Two',
                                'Free',
                                'Four'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 6,
                              style: kTextStyleSmallPrimary,
                              decoration: new InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 5.0),
                                ),
                                hintText: 'Your Message',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: kColorPrimary),
                              onPressed: () {},
                              child: Text(
                                "Send Message",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            child: Maps(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        size: 20,
                                        color: kSecondaryTextColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Give Us A Call",
                                          style: kTextStyleSmallPrimary),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: kSecondaryTextColor,
                                  width: 1,
                                  height: 40,
                                ),
                                InkWell(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.email,
                                        size: 20,
                                        color: kSecondaryTextColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Send An Email",
                                          style: kTextStyleSmallPrimary),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        future: invokeContacts(),
      ),
    );
  }

  getWidgetData(data) {
    _contactResponse = data;
    if (_contactResponse != null) {
      _contact = _contactResponse!.data as Contact;
      var _contactInfo = _contact!.contactInformation;
      return ListView.builder(
          itemCount: _contactInfo!.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "${_contactInfo[index].identifier}",
                    style: kTextStyleBlueBoldMedium,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${_contactInfo[index].name}",
                        style: kTextStyleBlackBold,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: kSecondaryTextColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                            "${_contactInfo[index].address}",
                            style: kTextStyleSmallPrimary,
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.mail,
                            size: 20,
                            color: kSecondaryTextColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("${_contactInfo[index].email}",
                              style: kTextStyleSmallPrimary),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.call,
                            size: 20,
                            color: kSecondaryTextColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("${_contactInfo[index].phone}",
                              style: kTextStyleSmallPrimary),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            );
          });
    }
  }

  Future<ApiResponse<dynamic>> invokeContacts() async {
    provider = Provider.of<GeneralProvider>(context, listen: false);
    await provider!.invokeContact();
    return provider!.contactResponse;
  }
}
