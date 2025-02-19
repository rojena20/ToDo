import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bottomSheets/languageBottomSheet.dart';
import '../bottomSheets/themeBottomSheet.dart';
import '../my_theme_data.dart';
import '../providers/theme_provider.dart';

class SettingsTab extends StatelessWidget {
  SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            "language".tr(),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: themeProvider.mode == ThemeMode.light
                      ? Color(0xff303030)
                      : MyThemeData.whiteColor,
                ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => Languagebottomsheet(),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: themeProvider.mode == ThemeMode.light
                    ? MyThemeData.whiteColor
                    : MyThemeData.darkCardColor,
                border: Border.all(
                  color: MyThemeData.secondaryColor,
                ),
              ),
              child: Text(
                context.locale == Locale("ar") ? "arabic".tr() : "english".tr(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: MyThemeData.secondaryColor,
                    ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "mode".tr(),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: themeProvider.mode == ThemeMode.light
                      ? Color(0xff303030)
                      : MyThemeData.whiteColor,
                ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => Themebottomsheet(),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: themeProvider.mode == ThemeMode.light
                    ? MyThemeData.whiteColor
                    : MyThemeData.darkCardColor,
                border: Border.all(
                  color: MyThemeData.secondaryColor,
                ),
              ),
              child: Text(
                themeProvider.mode == ThemeMode.light ? "light".tr() : "dark".tr(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: MyThemeData.secondaryColor,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
