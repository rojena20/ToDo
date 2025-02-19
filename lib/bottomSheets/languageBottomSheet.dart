import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../my_theme_data.dart';
import '../providers/theme_provider.dart';

class Languagebottomsheet extends StatelessWidget {
  Languagebottomsheet({super.key});

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
              context.setLocale(Locale("ar"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "arabic".tr(),
                  style: context.locale == Locale("ar")
                      ? Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: MyThemeData.secondaryColor,
                          )
                      : Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: themeProvider.mode == ThemeMode.light
                                ? MyThemeData.blackCommon
                                : MyThemeData.whiteColor,
                          ),
                ),
                context.locale == Locale("ar")
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
              context.setLocale(Locale("en"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "english".tr(),
                  style: context.locale == Locale("en")
                      ? Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: MyThemeData.secondaryColor,
                          )
                      : Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: themeProvider.mode == ThemeMode.light
                                ? MyThemeData.blackCommon
                                : MyThemeData.whiteColor,
                          ),
                ),
                context.locale == Locale("en")
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
