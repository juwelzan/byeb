import 'package:byeb/core/path/paths.dart';

class OrientationConfig extends InheritedWidget {
  final Orientation orientation;

  const OrientationConfig({
    super.key,
    required this.orientation,
    required super.child,
  });
  static OrientationConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<OrientationConfig>()!;
  }

  @override
  bool updateShouldNotify(OrientationConfig oldWidget) {
    return orientation != oldWidget.orientation;
  }
}

extension Ori on BuildContext {
  Orientation get orientation => OrientationConfig.of(this).orientation;
}
