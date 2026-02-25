import 'package:byeb/core/themes/logic/cubit/theme_cubit.dart';
import 'package:byeb/features/home/presentation/main_screen.dart';
import 'package:byeb/features/splash/logic/cubit/splash_cubit.dart';
import 'package:byeb/routes/routers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/path/paths.dart';

void main() {
  runApp(
    ScreenUtil(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()..themeInitial()),
          BlocProvider(create: (context) => SplashCubit()..startSplash()),
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
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: MainScreen.name,
          onGenerateRoute: Routers.route,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: state.isTheme,
        );
      },
    );
  }
}
