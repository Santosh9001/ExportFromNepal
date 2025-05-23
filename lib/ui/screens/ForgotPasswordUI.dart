import 'package:either_dart/either.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/provider/AccountProvider.dart';
import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/ui/screens/PasswordResetUI.dart';
import 'package:export_nepal/ui/screens/PwdResetConfirmUI.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/toast.dart';
import 'package:export_nepal/utils/validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

class ForgotPasswordUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordUI> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  sendEmailVerification() async {
    var provider = Provider.of<AccountProvider>(context);
    Either<Glitch, String> response =
        await provider.sendEmailVerification(_emailController.text);
    if (response.isLeft) {
      showToast(context, response.left.message);
    } else if (response.isRight) {
      showToast(context, "Email sent to " + _emailController.text);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PasswordResetUI()));
    }
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
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: double.infinity,
                    child: Text(
                      "Enter your registered email account to get a link to reset your password.",
                      style: TextStyle(color: kPrimaryTextColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 8.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Eg: johnsondoe@nomail.com",
                        suffixIcon: Icon(
                          Feather.mail,
                          size: 20.0,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email';
                        }
                        if (!validateEmail(value)) {
                          return 'Please enter a valid Email';
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
                              Navigator.pop(context);
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
                              if (_emailController.text.isNotEmpty) {
                                sendEmailVerification();
                              }
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
