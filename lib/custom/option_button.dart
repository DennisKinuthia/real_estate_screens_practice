// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_estate/utils/constants.dart';
import 'package:real_estate/utils/widget_function.dart';

class OptionButton extends StatelessWidget {
  const OptionButton(
      {super.key, required this.text, required this.icon, required this.width});
  final String text;
  final IconData icon;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: colorDarkBlue,
          foregroundColor: colorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: colorWhite,
            ),
            addHorizontalSpace(10.0),
            Text(
              text,
              style: const TextStyle(color: colorWhite),
            ),
          ],
        ),
      ),
    );
  }
}
