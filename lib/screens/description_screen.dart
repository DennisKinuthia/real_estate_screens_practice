// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_estate/custom/border_box.dart';
import 'package:real_estate/custom/option_button.dart';
import 'package:real_estate/utils/constants.dart';
import 'package:real_estate/utils/custom_functions.dart';
import 'package:real_estate/utils/widget_function.dart';

class Description extends StatelessWidget {
  const Description({super.key, this.itemData});

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 20.0;
    const EdgeInsets sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image(
                        image: AssetImage(itemData['image']),
                      ),
                      Positioned(
                        top: 20.0,
                        width: size.width,
                        child: Padding(
                          padding: sidePadding,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: BorderBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: colorBlack,
                                  ),
                                ),
                              ),
                              BorderBox(
                                width: 50.0,
                                height: 50.0,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: colorBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              formatCurrency(itemData['amount']),
                              style: themeData.textTheme.headline1,
                            ),
                            addVerticalSpace(3.0),
                            Text(
                              itemData['address'],
                              style: themeData.textTheme.bodyText2,
                            ),
                          ],
                        ),
                        BorderBox(
                          width: 110.0,
                          height: 50,
                          child: Text(
                            '20 Hours ago',
                            style: themeData.textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      'House Information',
                      style: themeData.textTheme.headline4,
                    ),
                  ),
                  addVerticalSpace(padding),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        {'Square Foot': itemData['area']},
                        {'Bedrooms': itemData['bedrooms']},
                        {'Bathrooms': itemData['bathrooms']},
                        {'Garage': itemData['garage']}
                      ]
                          .map(
                            (data) => Container(
                              margin: const EdgeInsets.only(left: 30.0),
                              child: Column(
                                children: <Widget>[
                                  BorderBox(
                                    width: 65.0,
                                    height: 65.0,
                                    child: Text(
                                      '${data.values.first}',
                                      style: themeData.textTheme.headline4,
                                    ),
                                  ),
                                  addVerticalSpace(10.0),
                                  Text(
                                    data.keys.first,
                                    style: themeData.textTheme.headline6,
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  addVerticalSpace(padding),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      child: Padding(
                        padding: sidePadding,
                        child: Text(itemData['description']),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 30.0,
                width: size.width,
                child: Padding(
                  padding: sidePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      OptionButton(
                        text: 'Text',
                        icon: Icons.message,
                        width: size.width * 0.30,
                      ),
                      OptionButton(
                        text: 'Call',
                        icon: Icons.call,
                        width: size.width * 0.30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
