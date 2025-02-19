import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffDFECDB);
  static Color primaryDarkColor = Color(0xff060E1E);
  static Color secondaryColor = Color(0xff5D9CEC);
  static Color darkCardColor = Color(0xff141922);
  static Color whiteColor = Colors.white;
  static Color grayColor = Color(0xffC8C9CB);
  static Color blackMoreCommon = Color(0xff383838);
  static Color blackCommon = Color(0xff363636);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: primaryColor,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: GoogleFonts.inder(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.roboto(
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.inder(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: secondaryColor,
      elevation: 0.0,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: whiteColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: whiteColor,
      selectedItemColor: secondaryColor,
      unselectedItemColor: grayColor,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    primaryColor: blackMoreCommon,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: whiteColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
        side: BorderSide(
          color: whiteColor,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: whiteColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: primaryDarkColor,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: GoogleFonts.inder(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.roboto(
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.inder(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: secondaryColor,
      elevation: 0.0,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: primaryDarkColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: darkCardColor,
      selectedItemColor: secondaryColor,
      unselectedItemColor: grayColor,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    primaryColor: whiteColor,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkCardColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
        side: BorderSide(
          color: darkCardColor,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: whiteColor,
    ),
  );
}
