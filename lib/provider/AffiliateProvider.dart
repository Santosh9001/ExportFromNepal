import 'package:either_dart/either.dart';
import 'package:export_nepal/model/core/affiliate_groups.dart';
import 'package:export_nepal/model/core/logged_in_user.dart';
import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/repositories/affiliate_repository.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/preference_utils.dart';
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

  AffiliateRepository? _affiliateRepository;
  Logged_in_user? _loggedInUser;

  AffiliateProvider() {
    _affiliateRepository = AffiliateRepository();
    var user = PreferenceUtils.getString(PreferenceUtils.USER);
    _loggedInUser = Logged_in_user.fromJson(user);
  }

  Logged_in_user? get loggedUser {
    return _loggedInUser;
  }

  ApiResponse _affiliateResponse = ApiResponse.loading("Loading");

  ApiResponse get affiliateGroupResponse {
    return _affiliateResponse;
  }

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
    notifyListeners();
  }

  void setChangePass() {
    this._changePass = !_changePass;
    notifyListeners();
  }

  void setAffiliateSelected(value) {
    _affiliateDropdown = options[value];
    notifyListeners();
  }

  getChangeEmailPassword() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isChangeEmail
            ? Column(
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
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kSecondaryTextColor, width: 1.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              )
            : SizedBox(
                height: 0,
              ),
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
          height: 10,
        ),
        isChangePass
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kSecondaryTextColor, width: 1.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15)
                ],
              )
            : SizedBox(
                height: 0,
              ),
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
          getChangeEmailPassword(),
        ],
      );
    else
      return Container();
  }

  Future<ApiResponse> invokeAffiliateGroups() async {
    try {
      if (_affiliateRepository != null) {
        Either<Glitch, Affiliate_groups> response =
            await _affiliateRepository!.getAffiliateGroups();
        if (response.isLeft) {
          _affiliateResponse = ApiResponse.error(response.left.message);
        } else if (response.isRight) {
          _affiliateResponse = ApiResponse.completed(response.right);
        }
      } else {
        _affiliateResponse = ApiResponse.error("Internal Error");
      }
    } catch (e) {
      _affiliateResponse.status = Status.ERROR;
      _affiliateResponse = ApiResponse.error(e.toString());
    }
    notifyListeners();
    return _affiliateResponse;
  }
}
