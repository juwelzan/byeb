import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main/home_screen/presentation/home_scree.dart';

class NavbarController with ChangeNotifier {
  final PageController pageController = PageController();
  int pageIndex = 0;
  void nextScreen(int pagendex) {
    pageController.jumpToPage(pagendex);
    pageIndex = pagendex;
    notifyListeners();
  }

  final List<Widget> page = <Widget>[
    HomeScreen(),
    Placeholder(color: Colors.amber),
    Placeholder(),
    Placeholder(color: Colors.deepOrange),
  ];
  void copyWith({int? index}) {
    pageIndex = index ?? pageIndex;
    notifyListeners();
  }
}
