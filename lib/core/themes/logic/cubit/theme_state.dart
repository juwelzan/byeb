// ignore_for_file: camel_case_types

part of 'theme_cubit.dart';



@immutable
class ThemeState {
  final ThemeMode isTheme;


  const ThemeState({this.isTheme = ThemeMode.light});

  ThemeState copyWith({ThemeMode? isTheme}) {
    return ThemeState(isTheme: isTheme ?? this.isTheme);
  }
}
