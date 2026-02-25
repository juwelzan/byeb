import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/auth/presentation/login_or_create_screen.dart';
import 'package:byeb/features/auth/presentation/login_screen.dart';
import 'package:byeb/features/auth/presentation/signup_screen.dart';
import 'package:byeb/features/home/presentation/main_screen.dart';
import 'package:byeb/features/splash/presentation/splash_screen.dart';

class Routers {
  static Route<dynamic> route(RouteSettings routers) {
    Route route = fadeTransition(SizedBox());

    switch (routers.name) {
      case SplashScreen.name:
        route = fadeTransition(SplashScreen());

      case LoginScreen.name:
        route = slideTransition(LoginScreen());

      case LoginOrCreateScreen.name:
        route = slideTransition(LoginOrCreateScreen());
      case SignupScreen.name:
        route = slideTransition(SignupScreen());

      case MainScreen.name:
        route = fadeTransition(MainScreen());
    }
    return route;
  }
}

Route fadeTransition(Widget page) => PageRouteBuilder(
  transitionDuration: Duration(milliseconds: 300),
  pageBuilder: (context, animation, secondaryAnimation) => page,
  transitionsBuilder: (context, animation, secondaryAnimation, child) {
    final fade = Tween(begin: 0.0, end: 1.0).animate(animation);
    return FadeTransition(opacity: fade, child: child);
  },
);
Route slideTransition(Widget page) => PageRouteBuilder(
  transitionDuration: Duration(milliseconds: 300),
  pageBuilder: (context, animation, secondaryAnimation) => page,
  transitionsBuilder: (context, animation, secondaryAnimation, child) {
    final slide = Tween(
      begin: Offset(0, 1),
      end: Offset.zero,
    ).animate(animation);
    return SlideTransition(position: slide, child: child);
  },
);
