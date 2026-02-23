// ignore_for_file: avoid_print, non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState());

  Future<void> themeInitial() async {
    final Shader = await SharedPreferences.getInstance();
    final getTheme = Shader.getString(Keys.themeKey);
    print(getTheme);

    if (getTheme == null) {
      emit(state.copyWith(isTheme: ThemeMode.light));
      Shader.setString(Keys.themeKey, "${ThemeMode.light}");
    }
    if (getTheme != null) {
      if (getTheme == "${ThemeMode.light}") {
        emit(state.copyWith(isTheme: ThemeMode.light));
      }
      if (getTheme == "${ThemeMode.dark}") {
        emit(state.copyWith(isTheme: ThemeMode.dark));
      }
      if (getTheme == "${ThemeMode.system}") {
        emit(state.copyWith(isTheme: ThemeMode.system));
      }
    }
  }

  Future<void> themeTgol(ThemeMode themeMode) async {
    final Shader = await SharedPreferences.getInstance();

    if (themeMode == ThemeMode.dark) {
      emit(state.copyWith(isTheme: ThemeMode.dark));
      Shader.setString(Keys.themeKey, "${ThemeMode.dark}");
    }

    if (themeMode == ThemeMode.light) {
      emit(state.copyWith(isTheme: ThemeMode.light));
      Shader.setString(Keys.themeKey, "${ThemeMode.light}");
    }
    if (themeMode == ThemeMode.system) {
      emit(state.copyWith(isTheme: ThemeMode.system));
      Shader.setString(Keys.themeKey, "${ThemeMode.system}");
    }
  }
}
