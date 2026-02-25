import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/auth/presentation/login_or_create_screen.dart';
import 'package:byeb/features/auth/presentation/login_screen.dart';
import 'package:byeb/features/splash/presentation/splash_screen.dart';

class Routers {
  static Route<dynamic> route(RouteSettings routers) {
    Widget widget = SizedBox();

    switch (routers.name) {
      case SplashScreen.name:
        widget = SplashScreen();

      case LoginScreen.name:
        widget = LoginScreen();

      case LoginOrCreateScreen.name:
        widget = LoginOrCreateScreen();
    }
    return pageBuilder(widget);
  }
}

Route pageBuilder(Widget page) => PageRouteBuilder(
  transitionDuration: Duration(milliseconds: 500),
  pageBuilder: (context, animation, secondaryAnimation) => page,
  transitionsBuilder: (context, animation, secondaryAnimation, child) {
    final fade = Tween(begin: 0.0, end: 1.0).animate(animation);
    return FadeTransition(opacity: fade, child: child);
  },
);
