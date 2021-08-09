import 'package:export_nepal/provider/RMAProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RMAStatusDialog extends StatefulWidget {
  const RMAStatusDialog({Key? key}) : super(key: key);

  @override
  _RMAStatusDialogState createState() => _RMAStatusDialogState();
}

class _RMAStatusDialogState extends State<RMAStatusDialog> {  
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RMAProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: provider.statusOptions.length,
            itemBuilder: (context, index) {
              return new Row(
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: Radio(
                      value: index,
                      groupValue: provider.radioGroupValue,
                      onChanged: (value) {
                        setState(() {
                          provider.setRadioGroupValue(value as int);
                        });
                      },
                      activeColor: kColorPrimary,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      provider.statusOptions[index],
                      style: kTextStyleMediumPrimary,
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: kColorPrimary),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(
              "Make A Request",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
