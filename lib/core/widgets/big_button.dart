

import 'package:flutter/material.dart';
import 'package:olascut/core/color_strings.dart';

class BigButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String textTitle;
  const BigButton({Key? key, required this.onTap, required this.textTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 50.0,
        color: primaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: onTap,
        child: Text(
          textTitle,
          style: const TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700),
        ));
  }
}
