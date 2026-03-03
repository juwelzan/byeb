import 'package:byeb/core/config/orientation_config.dart';
import 'package:byeb/core/themes/logic/theme_controller.dart';
import 'package:byeb/features/home_screen/logic/ads_banner/banner_controller.dart';
import 'package:byeb/features/main_screen/logic/nav_bar/navbar_controller.dart';
import 'package:byeb/features/splash/logic/splash_controller.dart';
import 'package:byeb/features/splash/presentation/splash_screen.dart';
import 'package:byeb/firebase_options.dart';
import 'package:byeb/routes/routers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'core/path/paths.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
          navigatorKey: Routers.navigatorKey,
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.name,
          onGenerateRoute: Routers.route,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: state.themeMode,
          builder: (context, child) => OrientationBuilder(
            builder: (context, orientation) =>
                OrientationConfig(orientation: orientation, child: child!),
          ),
        );
      },
    );
  }
}
