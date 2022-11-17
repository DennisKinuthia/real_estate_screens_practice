import 'package:flutter/material.dart';
import 'package:real_estate/utils/constants.dart';

class ChoiceOption extends StatelessWidget {
  const ChoiceOption({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: colorGrey.withAlpha(25),
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 13.0,
      ),
      margin: const EdgeInsets.only(left: 25.0),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}
