import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/ui/screens/PwdResetConfirmUI.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class PasswordResetUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<PasswordResetUI> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      "assets/images/forgot_password.svg",
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Forgot Your Password ?",
                      style: kTextStyleSmall,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Reset Your Password",
                      style: kTextStyleLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0),
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Password",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: IconButton(
                            onPressed: _toggle,
                            icon: Icon(
                              Fontisto.eye,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0),
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Confirm Password",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: IconButton(
                            onPressed: _toggle,
                            icon: Icon(
                              Fontisto.eye,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                        child: SizedBox(
                          height: 50,
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              // Cancel the forgot password situation
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: kColorRed),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(width: 1, color: kColorRed),
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.all(10)),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                        child: SizedBox(
                          height: 50,
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              /*if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Handle Login')));
                              }*/
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PwdResetConfirmUI()));
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: kColorPrimary,
                                side:
                                    BorderSide(width: 1, color: kColorPrimary),
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.all(10)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
