import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main/main_screen/presentation/main_screen.dart';

class SplashController extends ChangeNotifier {
  Future<void> splashStart(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));

    Navigator.pushNamedAndRemoveUntil(
      context,
      MainScreen.name,
      (value) => false,
    );
  }
}
