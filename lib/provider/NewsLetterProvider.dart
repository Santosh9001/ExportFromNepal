import 'package:flutter/cupertino.dart';

class NewsLetterProvider extends ChangeNotifier {
  bool _generalSubscription = false;
  bool _otherNotifications = false;

  get isOtherNotificationEnabled => _otherNotifications;
  get isGeneralSubscriptionEnabled => _generalSubscription;

  void toggleGeneralSubscription() {
    if (isGeneralSubscriptionEnabled) {
      _generalSubscription = false;
    } else {
      _generalSubscription = true;
    }
    notifyListeners();
  }

  void toggleOtherNotifications() {
    if (isOtherNotificationEnabled) {
      _otherNotifications = false;
    } else {
      _otherNotifications = true;
    }
    notifyListeners();
  }
}
