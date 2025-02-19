import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../my_theme_data.dart';
import '../providers/theme_provider.dart';

class Themebottomsheet extends StatelessWidget {
  Themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              themeProvider.channgeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "light".tr(),
                  style: themeProvider.mode == ThemeMode.light
                      ? Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: MyThemeData.secondaryColor)
                      : Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: MyThemeData.whiteColor),
                ),
                themeProvider.mode == ThemeMode.light
                    ? Icon(
                  Icons.done,
                  color: MyThemeData.secondaryColor,
                )
                    : SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              themeProvider.channgeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "dark".tr(),
                  style: themeProvider.mode == ThemeMode.dark
                      ? Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: MyThemeData.secondaryColor)
                      : Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Color(0xff303030),
                  ),
                ),
                themeProvider.mode == ThemeMode.dark
                    ? Icon(
                  Icons.done,
                  color: MyThemeData.secondaryColor,
                )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
