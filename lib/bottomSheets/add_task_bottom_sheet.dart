import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../my_theme_data.dart';
import '../providers/theme_provider.dart';
import '../text_field_input.dart';

class AddTaskBottomSheet extends StatelessWidget {
  AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
            ),
            child: Text(
              "addTask".tr(),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: themeProvider.mode == ThemeMode.light
                        ? MyThemeData.blackMoreCommon
                        : MyThemeData.whiteColor,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          TextFieldInput(
            plaseholder: "taskTitle".tr(),
          ),
          TextFieldInput(
            plaseholder: "desc".tr(),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 30.0,
            ),
            child: Text(
              "selectedDate".tr(),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: themeProvider.mode == ThemeMode.light
                        ? MyThemeData.blackMoreCommon
                        : MyThemeData.grayColor,
                  ),
            ),
          ),
          Text(
            "28/8/2025",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: themeProvider.mode == ThemeMode.light
                      ? MyThemeData.blackMoreCommon
                      : MyThemeData.grayColor,
                ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 30.0,
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0,),
              decoration: BoxDecoration(
                color: MyThemeData.secondaryColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                "add".tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: MyThemeData.whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
