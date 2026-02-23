import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/splash/presentation/splash_screen.dart';

class Routers {
  static Route<dynamic> route(RouteSettings routers) {
    Widget widget = SizedBox();

    switch (routers.name) {
      case SplashScreen.name:
        widget = SplashScreen();
    }
    return MaterialPageRoute(builder: (context) => widget);
  }
}
