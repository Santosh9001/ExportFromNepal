import 'package:either_dart/either.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/provider/AccountProvider.dart';
import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountInformation extends StatefulWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  _AccountInformationState createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kColorBackground,
          elevation: 0,
          title: new Text(
            "Update Account Information",
            style: kTextStyleMediumBlue,
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
        body: Container(
          margin: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(kDummyAvatarImage),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Update Profile Picture",
                style: kTextStyleMediumPrimary,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    hintText: "First Name"),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    hintText: "Last Name"),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0), hintText: "Email"),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    hintText: "Phone Number"),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Button(
                      text: "Update Information",
                      onPress: () {},
                      color: kColorPrimary,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Button(
                      text: "Change Password",
                      onPress: () {
                        PasswordChangeSheet(context);
                      },
                      color: kColorPrimary,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> PasswordChangeSheet(BuildContext context) {
    TextEditingController _currentPass = TextEditingController();
    TextEditingController _newPass = TextEditingController();
    TextEditingController _confirmPass = TextEditingController();
    final provider = Provider.of<AccountProvider>(context);

    checkCriteria() {
      if (_currentPass.text.isNotEmpty &&
          _newPass.text.isNotEmpty &&
          _confirmPass.text.isNotEmpty) {
        if (_newPass.text == _confirmPass.text) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    }

    changePassword() async {
      Either<Glitch, String> response =
          await provider.updatePassword(_currentPass.text, _newPass.text);
      if (response.isLeft) {
        showToast(context, response.left.message);
      } else if (response.isRight) {
        showToast(context, "Password update successfully");
        Navigator.pop(context);
      }
    }

    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: kColorBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Update Password",
                    style: kTextStyleLarge,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    color: kColorBlack,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: _currentPass,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Current Password"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: _newPass,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "New Password"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: _confirmPass,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Confirm Password"),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Button(
                          text: "Cancel",
                          onPress: () {
                            Navigator.pop(context);
                          },
                          color: kColorPrimary,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Button(
                          text: "Update Password",
                          onPress: () {
                            if (checkCriteria()) {
                              changePassword();
                            }
                          },
                          color: kColorPrimary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
