import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  var _selectedSizeIndex = 0;
  var _selectedColorIndex = 0;
  var _itemQty = 1;

  int get quantity => _itemQty;

  int get colorIndex => _selectedColorIndex;
  int get sizeIndex => _selectedSizeIndex;

  void setQuantity(int qty) {
    _itemQty += qty;
    notifyListeners();
  }

  void setCurrentColorFromIndex(index) {
    _selectedColorIndex = index;
    notifyListeners();
  }

  void setCurrentSizeFromIndex(index) {
    _selectedSizeIndex = index;
    notifyListeners();
  }

  List<String> sizeList = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
    "XXXL",
    "10cm",
    "40cm",
    "120cm"
  ];

  List<Widget> createSizes() {
    return new List<Widget>.generate(sizeList.length, (int index) {
      return new InkWell(
        onTap: () {
          setCurrentSizeFromIndex(index);
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: sizeIndex == index ? kColorPrimary : Colors.white),
          child: Text(
            sizeList[index],
            style: TextStyle(
                color: sizeIndex == index ? Colors.white : Colors.black),
          ),
        ),
      );
    });
  }

  List<Color> someList = [Colors.blue, Colors.red, Colors.green, Colors.purple];
  List<Widget> createColors() {
    return new List<Widget>.generate(someList.length, (int index) {
      return new InkWell(
        onTap: () {
          setCurrentColorFromIndex(index);
        },
        child: Container(
          margin: EdgeInsets.only(right: 5),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: someList[index]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: colorIndex == index
                ? Icon(
                    Icons.check,
                    size: 10.0,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    size: 10.0,
                    color: someList[index],
                  ),
          ),
        ),
      );
    });
  }
}
