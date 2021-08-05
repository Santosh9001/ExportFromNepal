import 'package:export_nepal/model/glitch/glitch.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';

class ServerErrorWidget extends StatelessWidget {
  final String _error;
  final VoidCallback onReload;
  const ServerErrorWidget(this._error, {required this.onReload});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Error: ${_error}",
        style: TextStyle(color: kPrimaryTextColor),
      ),
      SizedBox(height: 20),
      TextButton(
        onPressed: onReload,
        child: Text("Try reload"),
      )
    ]);
  }
}
