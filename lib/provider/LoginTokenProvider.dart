import 'package:export_nepal/model/services/APICalls.dart';
import 'package:flutter/cupertino.dart';

class LoginTokenProvider extends ChangeNotifier{
  bool loading = false;
  String? loginToken;

  fetchUserToken(context,String username,String password) async {
    var api = APICalls();
    loading = true;
    print(username);
    loginToken = (await api.loginUser(context, username, password));
    print(loginToken);
    loading = false;
  }
}