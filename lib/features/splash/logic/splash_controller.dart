import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main_screen/presentation/main_screen.dart';
import 'package:byeb/routes/routers.dart';

class SplashController extends ChangeNotifier {
  Future<void> splashStart(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));

    goRouter.pushReplacement(MainScreen.name);
  }
}
