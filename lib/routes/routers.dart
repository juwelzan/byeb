import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/auth/presentation/login_screen.dart';
import 'package:byeb/features/main_screen/presentation/main_screen.dart';
import 'package:byeb/features/splash/presentation/splash_screen.dart';
import 'package:go_router/go_router.dart';

// class Routers {
//   static final GlobalKey<NavigatorState> navigatorKey =
//       GlobalKey<NavigatorState>();
//   static Route<dynamic> route(RouteSettings routers) {
//     Route route = fadeTransition(SizedBox());

//     switch (routers.name) {
//       case SplashScreen.name:
//         route = fadeTransition(SplashScreen());

//       case LoginScreen.name:
//         route = slideTransition(LoginScreen());

//       case LoginOrCreateScreen.name:
//         route = slideTransition(LoginOrCreateScreen());
//       case SignupScreen.name:
//         route = slideTransition(SignupScreen());

//       case MainScreen.name:
//         route = fadeTransition(MainScreen());
//     }
//     return route;
//   }

//   static void to(String routeName) {
//     navigatorKey.currentState!.pushNamed(routeName);
//   }

//   static void remove(String routeName) {
//     navigatorKey.currentState!.pushNamedAndRemoveUntil(
//       routeName,
//       (route) => false,
//     );
//   }
// }

// Route fadeTransition(Widget page) => PageRouteBuilder(
//   transitionDuration: Duration(milliseconds: 300),
//   pageBuilder: (context, animation, secondaryAnimation) => page,
//   transitionsBuilder: (context, animation, secondaryAnimation, child) {
//     final fade = Tween(begin: 0.0, end: 1.0).animate(animation);
//     return FadeTransition(opacity: fade, child: child);
//   },
// );
// Route slideTransition(Widget page) => PageRouteBuilder(
//   transitionDuration: Duration(milliseconds: 300),
//   pageBuilder: (context, animation, secondaryAnimation) => page,
//   transitionsBuilder: (context, animation, secondaryAnimation, child) {
//     final slide = Tween(
//       begin: Offset(0, 1),
//       end: Offset.zero,
//     ).animate(animation);
//     return SlideTransition(position: slide, child: child);
//   },
// );

GoRouter goRouter = GoRouter(
  initialLocation: SplashScreen.name,
  routes: [
    fadeTransition(path: SplashScreen.name, page: SplashScreen()),
    fadeTransition(path: LoginScreen.name, page: LoginScreen()),
    fadeTransition(path: MainScreen.name, page: MainScreen()),
  ],
);

GoRoute slideTransition({required String path, required Widget page}) {
  return GoRoute(
    path: path,
    pageBuilder: (context, state) => CustomTransitionPage(
      child: page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final slide = Tween(
          begin: Offset(0, 1),
          end: Offset.zero,
        ).animate(animation);
        return SlideTransition(position: slide, child: child);
      },
    ),
  );
}

GoRoute fadeTransition({required String path, required Widget page}) {
  return GoRoute(
    path: path,
    pageBuilder: (context, state) => CustomTransitionPage(
      child: page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final fade = Tween(begin: 0.0, end: 1.0).animate(animation);
        return FadeTransition(opacity: fade, child: child);
      },
    ),
  );
}
