import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepProgressView extends StatefulWidget {
  final double _width;

  final List<String> _titles;
  int _curStep;
  final Color _activeColor;
  final Color _inactiveColor = Colors.white;
  final double lineWidth = 1.0;

  StepProgressView(
      {Key? key,
      required int curStep,
      required List<String> titles,
      required double width,
      required Color color})
      : _titles = titles,
        _curStep = curStep,
        _width = width,
        _activeColor = color,
        assert(width > 0),
        super(key: key);

  @override
  _StepProgressState createState() =>
      _StepProgressState(_width, _titles, _curStep, _activeColor);

  void updateIndicator(position) {
    this._curStep = position;
  }
}

class _StepProgressState extends State<StepProgressView> {
  final double _width;

  final List<String> _titles;
  final int _curStep;
  final Color _activeColor;
  final Color _inactiveColor = Colors.white;
  final Color _inactiveLineColor = kSecondaryTextColor;
  final double lineWidth = 1.0;

  _StepProgressState(
      this._width, this._titles, this._curStep, this._activeColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      width: this._width,
      child: Column(
        children: <Widget>[
          Row(
            children: _iconViews(),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _titleViews(),
          ),
        ],
      ),
    );
  }

  List<Widget> _iconViews() {
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

  List<Widget> _titleViews() {
    var list = <Widget>[];
    _titles.asMap().forEach((i, text) {
      list.add(Text(text, style: TextStyle(color: kPrimaryTextColor)));
    });
    return list;
  }
}
