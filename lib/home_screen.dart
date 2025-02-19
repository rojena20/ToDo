import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/providers/tabs_provider.dart';
import 'package:to_do/providers/theme_provider.dart';
import 'package:to_do/tabs/settings_tab.dart';
import 'package:to_do/tabs/to_do_tab.dart';

import 'bottomSheets/add_task_bottom_sheet.dart';
import 'my_theme_data.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => TapsProvider(),
      child: Consumer<TapsProvider>(
        builder: (context, tapsProvider, child) => SafeArea(
          top: false,
          child: Scaffold(
            extendBody: true,
            appBar: AppBar(
              title: Text(
                tapsProvider.selectedIndex == 0 ? "toDoTitle".tr() : "settings".tr(),
              ),
              titleSpacing: 50.0,
            ),
            body: tabs[tapsProvider.selectedIndex],
            bottomNavigationBar: BottomAppBar(
              color: themeProvider.mode == ThemeMode.light
                  ? MyThemeData.whiteColor
                  : MyThemeData.darkCardColor,
              notchMargin: 10,
              padding: EdgeInsets.zero,
              shape: CircularNotchedRectangle(),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                currentIndex: tapsProvider.selectedIndex,
                onTap: (value) {
                  tapsProvider.selectTap(value);
                },
                items: [
                  BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      Icons.list,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => AddTaskBottomSheet(),
                );
              },
              child: Icon(
                Icons.add,
                color: MyThemeData.whiteColor,
                size: 35,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: themeProvider.mode == ThemeMode.light
                      ? MyThemeData.whiteColor
                      : MyThemeData.darkCardColor,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          ),
        ),
      ),
    );
  }

  List<Widget> tabs = [
    ToDoTab(),
    SettingsTab(),
  ];
}
