import 'package:export_nepal/ui/components/button.dart';
import 'package:export_nepal/ui/screens/LoginUI.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PwdResetConfirmUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/images/reset_password_confirm.svg",
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: double.infinity,
              child: Text("Your password has been reset successfully.",
                  style: kTextStyleBlackBold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Button(
                color: kColorPrimary,
                text: "Log In now",
                onPress: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginUI()),
                    (Route<dynamic> route) => false,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
