import 'package:byeb/core/path/paths.dart';
import 'package:byeb/core/themes/app_colors.dart';

class AppTheme {
  ///Light Theme
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightBackGround,
    primaryColor: AppColors.lightPrimary,
    
    useMaterial3: true,
    brightness: Brightness.light,
  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkBackGround,
    brightness: Brightness.dark,
  );
}
