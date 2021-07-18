import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class AffiliateProvider extends ChangeNotifier {
  String _affiliateDropdown = 'Select Affiliate Program';

  String get getAffiliateDropdown => _affiliateDropdown;

  bool _emailNotify = false;
  bool _changeEmail = false;
  bool _changePass = false;
  bool _obscureText = true;
  bool _showChange = false;

  get getChangeOption => _showChange;

  get getChangeTitle => _changeEmail ? "Change Email" : "Change Password";

  get checkEmailOrPwd => _changeEmail ? true : false;

  final List<String> options = ["Non Profit", "Promotion"];

  bool get isEmailNotified => _emailNotify;

  bool get isChangeEmail => _changeEmail;

  bool get isChangePass => _changePass;

  void setChangeOption() {
    if (_changeEmail || _changePass) {
      _showChange = true;
    } else {
      _showChange = false;
    }
    notifyListeners();
  }

  void setEmailNotify() {
    this._emailNotify = !_emailNotify;
    notifyListeners();
  }

  void setChangeEmail() {
    this._changeEmail = !_changeEmail;
    if (this._changeEmail) this._changePass = false;
    notifyListeners();
  }

  void setChangePass() {
    this._changePass = !_changePass;
    if (this._changePass) this._changeEmail = false;
    notifyListeners();
  }

  void setAffiliateSelected(value) {
    _affiliateDropdown = options[value];
    notifyListeners();
  }

  getEmailChangeWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Change Email *",
          style: kTextStyleSmall,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: new InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            focusedBorder: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kSecondaryTextColor, width: 1.0),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Change Password *",
          style: kTextStyleSmall,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: _obscureText,
          decoration: new InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            focusedBorder: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kSecondaryTextColor, width: 1.0),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  getChangePassword() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Current Password *",
          style: kTextStyleSmall,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: _obscureText,
          decoration: new InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            focusedBorder: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kSecondaryTextColor, width: 1.0),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "New Password *",
          style: kTextStyleSmall,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: _obscureText,
          decoration: new InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            focusedBorder: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kSecondaryTextColor, width: 1.0),
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  getOption() {
    if (getChangeOption)
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 1, color: kSecondaryTextColor),
          SizedBox(
            height: 10,
          ),
          Text(
            getChangeTitle,
            style: kTextStyleSmallPrimary,
          ),
          SizedBox(height: 10),
          checkEmailOrPwd ? getEmailChangeWidget() : getChangePassword(),
        ],
      );
    else
      return Container();
  }
}
