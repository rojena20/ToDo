import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/my_theme_data.dart';
import 'package:to_do/providers/theme_provider.dart';

import 'models/task_model.dart';

class TaskCard extends StatelessWidget {
  TaskModel taskModel;

  TaskCard({
    super.key,
    required this.taskModel,
  });

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: themeProvider.mode == ThemeMode.light
              ? MyThemeData.whiteColor
              : MyThemeData.darkCardColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              height: 70.0,
              width: 3.0,
              color: MyThemeData.secondaryColor,
            ),
            SizedBox(width: 20.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    taskModel.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: MyThemeData.secondaryColor,
                        ),
                  ),
                  Text(
                    taskModel.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: themeProvider.mode == ThemeMode.light
                              ? MyThemeData.blackCommon
                              : MyThemeData.grayColor,
                        ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0,),
                decoration: BoxDecoration(
                  color: MyThemeData.secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.done),
              ),
            ),
            SizedBox(width: 10.0,),
          ],
        ),
      ),
    );
  }
}
