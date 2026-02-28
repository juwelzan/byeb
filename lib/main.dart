import 'package:byeb/core/themes/logic/theme_controller.dart';
import 'package:byeb/features/main/home_screen/logic/ads_banner/banner_controller.dart';
import 'package:byeb/features/main/main_screen/logic/nav_bar/navbar_controller.dart';
import 'package:byeb/features/splash/logic/splash_controller.dart';
import 'package:byeb/features/splash/presentation/splash_screen.dart';
import 'package:byeb/routes/routers.dart';
import 'package:provider/provider.dart';

import 'core/path/paths.dart';

void main() {
  runApp(
    ScreenUtil(
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ThemeController()..themeInitial(),
          ),
          ChangeNotifierProvider(create: (context) => SplashController()),
          ChangeNotifierProvider(create: (context) => NavbarController()),
          ChangeNotifierProvider(create: (context) => BannerController()),
        ],
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeController>(
      builder: (context, state, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.name,
          onGenerateRoute: Routers.route,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: state.themeMode,
        );
      },
    );
  }
}
