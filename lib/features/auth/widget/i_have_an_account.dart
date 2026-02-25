import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/auth/presentation/login_screen.dart';
import 'package:byeb/features/auth/presentation/signup_screen.dart';

class IHaveAnAccount extends StatelessWidget {
  const IHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("i have an ", style: TextStyle(fontSize: 15.f)),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, LoginScreen.name),
          child: Text(
            "account",
            style: TextStyle(fontSize: 15.f, color: context.theme.primaryColor),
          ),
        ),
        Text("?", style: TextStyle(fontSize: 15.f)),
      ],
    );
  }
}

class IDontHaveAnAccount extends StatelessWidget {
  const IDontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("i don't have an ", style: TextStyle(fontSize: 15.f)),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignupScreen.name),
          child: Text(
            "account",
            style: TextStyle(fontSize: 15.f, color: context.theme.primaryColor),
          ),
        ),
        Text("?", style: TextStyle(fontSize: 15.f)),
      ],
    );
  }
}
