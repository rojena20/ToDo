import 'package:flutter/material.dart';
import 'package:to_do/my_theme_data.dart';

class TextFieldInput extends StatelessWidget {
  String plaseholder;

  TextFieldInput({
    super.key,
    required this.plaseholder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 50.0,
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: MyThemeData.grayColor),
          hintText: plaseholder,
        ),
      ),
    );
  }
}
