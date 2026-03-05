import 'package:byeb/core/path/paths.dart';

extension Config on BuildContext {
  Brightness get isThemeMod => Theme.of(this).brightness;
}
