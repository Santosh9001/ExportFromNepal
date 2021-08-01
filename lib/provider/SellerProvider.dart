import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class SellerProvider extends ChangeNotifier {
  final List<String> _titles = ["Personal", "Company", "Account", "Address"];

  final PageController pageController = PageController(initialPage: 0);

  void switchPage(check) {
    if (check) {
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      _viewPosition++;
      updateCurStep(true);
    } else {
      pageController.previousPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      _viewPosition--;
      updateCurStep(false);
    }
    notifyListeners();
  }

  int _viewPosition = 1;

  int get myViewPosition => _viewPosition;

  String get getBtnText => myViewPosition == 4 ? "Create Account" : "Next Step";

  final Color _inactiveColor = Colors.white;
  final Color _inactiveLineColor = kSecondaryTextColor;
  final double lineWidth = 1.0;
  final Color _activeColor = kColorPrimary;
  int _curStep = 2;

  void updateCurStep(check) {
    if (check) {
      if (_curStep <= 4) {
        _curStep += 1;
      }
    } else {
      if (_curStep >= 2) {
        _curStep -= 1;
      }
    }
  }

  List<Widget> iconViews() {
    var list = <Widget>[];
    _titles.asMap().forEach((i, icon) {
      var circleColor =
          (i == 0 || _curStep > i + 1) ? _activeColor : _inactiveColor;
      var lineColor = _curStep > i + 1 ? _activeColor : _inactiveLineColor;
      var iconColor =
          (i == 0 || _curStep > i + 1) ? _activeColor : _inactiveColor;

      list.add(
        Container(
          width: 30.0,
          height: 30.0,
          padding: EdgeInsets.all(0),
          decoration: new BoxDecoration(
            /* color: circleColor,*/
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(22.0)),
            border: new Border.all(
              color: circleColor,
              width: 2.0,
            ),
          ),
          child: Icon(
            Icons.circle,
            color: iconColor,
            size: 18.0,
          ),
        ),
      );

      //line between icons
      if (i != _titles.length - 1) {
        list.add(Expanded(
            child: Container(
          height: lineWidth,
          color: lineColor,
        )));
      }
    });

    return list;
  }

  List<Widget> titleViews() {
    var list = <Widget>[];
    _titles.asMap().forEach((i, text) {
      list.add(Text(text, style: TextStyle(color: kPrimaryTextColor)));
    });
    return list;
  }

  String get getTextName => someList.length == 0 ? " " : "Edit List";
  List<String> someList = ["Art & Craft", "Shopping", "Clothes", "Carpets"];
  List<Widget> getCategories() {
    return new List<Widget>.generate(someList.length, (int index) {
      var value = index + 1;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            "$value. " + someList[index],
            style: kTextStyleSmallPrimary,
          )
        ],
      );
    });
  }
}
