import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_model.dart';
import '../my_theme_data.dart';
import '../providers/theme_provider.dart';
import '../task_card.dart';

class ToDoTab extends StatelessWidget {
  ToDoTab({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days: 365)),
          lastDate: DateTime.now().add(Duration(days: 365)),
          onDateSelected: (date) => print(date),
          leftMargin: 15,
          monthColor: themeProvider.mode == ThemeMode.light
              ? MyThemeData.blackCommon
              : MyThemeData.whiteColor,
          dayColor: MyThemeData.secondaryColor,
          activeDayColor: MyThemeData.whiteColor,
          activeBackgroundDayColor: MyThemeData.secondaryColor,
          locale: context.locale == Locale("ar") ? 'ar' : 'en',
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return TaskCard(
                taskModel: TaskModel(
                  title: "Task Title",
                  description: "Task description",
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
