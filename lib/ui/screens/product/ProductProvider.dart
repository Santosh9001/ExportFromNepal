import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  var _selectedSizeIndex = 0;

  int get sizeIndex => _selectedSizeIndex;

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
              color:
                  sizeIndex == index ? kColorPrimary : Colors.white),
          child: Text(
            sizeList[index],
            style: TextStyle(
                color:
                    sizeIndex== index ? Colors.white : Colors.black),
          ),
        ),
      );
    });
  }
  
}
