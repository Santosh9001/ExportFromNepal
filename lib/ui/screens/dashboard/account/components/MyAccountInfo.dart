import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class MyAccountInfo extends StatelessWidget {
  const MyAccountInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(kDummyAvatarImage),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John Doe",
                  style: kTextStyleMediumPrimary,
                ),
                Text(
                  "johndoe@gmail.com",
                  style: kTextStyleSmallPrimary,
                ),
              ],
            )
          ],
        ),
        Icon(Feather.edit)
      ],
    );
  }
}
