import 'package:byeb/core/path/paths.dart';
import 'package:byeb/core/themes/app_colors.dart';

class AppTheme {
  ///Light Theme
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightBackGround,
    primaryColor: AppColors.lightPrimary,
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.lightText,
        fontWeight: FontWeight.bold,
        fontSize: 40.f,
      ),
      bodySmall: TextStyle(
        color: AppColors.lightSubText,
        fontWeight: FontWeight.w400,
        fontSize: 18.f,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(width: 2, color: AppColors.darkPrimary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(width: 3, color: AppColors.darkPrimary),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.lightPrimary,
        maximumSize: Size(.infinity, 50.h),
        minimumSize: Size(.infinity, 50.h),
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        textStyle: TextStyle(fontSize: 20.f, fontWeight: .w800),
      ),
    ),
  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkBackGround,
    brightness: Brightness.dark,
  );
}

extension Context on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ButtonThemeData get buttonTheme => Theme.of(this).buttonTheme;
}
