import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/cart_screen/presentation/cart_screen.dart';
import 'package:byeb/features/categorie_screen/presentation/categorie_screen.dart';
import 'package:byeb/features/home_screen/presentation/home_scree.dart';

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
    CategorieScreen(),
    CartScreen(),
    Placeholder(color: Colors.deepOrange),
  ];
  void copyWith({int? index}) {
    pageIndex = index ?? pageIndex;
    notifyListeners();
  }
}
